//
//  NetworkManager.swift
//  InstagramApp
//
//  Created by Hlwan Aung Phyo on 2024/06/28.
// //
//https://my.api.mockaroo.com/users.json?key=0706adf0

import Foundation
import Combine


class UserViewModel : ObservableObject {
    
    static var instance = UserViewModel()
    
    @Published var users : [User] = []
   
    
    @Published var sortedUsers : [User] = []
    
    init(){
        
            
        self.fetchData()
        
        
        
        print("Init called")
    }

        
    func fetchData() {
        guard let url = URL(string: "https://my.api.mockaroo.com/users.json?key=0706adf0")else{print("URLが違う");return}
        print("Url valid")
        URLSession.shared.dataTask(with: url){data,response,error in
            if let data = data{
                print("got data")
                if let decodedResponse = try? JSONDecoder().decode([User].self, from: data){
                    print("data decoded")
                    DispatchQueue.main.async { [weak self] in
                        self?.users = decodedResponse
                        print("decoded data were added to the users")
                        self?.sortUsersByDate()

                    }
                }
            }else{
                print("dataが取得できない")
            }
        }.resume()
    }
    
    
    func sortUsersByDate() {
        self.sortedUsers = self.users.sorted {
            guard let date1 = $0.dateObject, let date2 = $1.dateObject else {
                print("Can't sort")
                return false
            }
            return date1 > date2
            
        }
    }
    
    func deleteUser(indexSet : IndexSet){
        sortedUsers.remove(atOffsets: indexSet)
    }
    
}
