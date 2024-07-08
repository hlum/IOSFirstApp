//
//  DataModel.swift
//  InstagramApp
//
//  Created by Hlwan Aung Phyo on 2024/06/28.
//

import Foundation


struct User : Identifiable, Codable  {
    let id, emailAdress, name, title: String
    let body: String
    let date: String
    let userImage: URL
    
    
    var dateObject: Date? {
            let formatter = DateFormatter()
            formatter.dateFormat = "dd-MM-yyyy" // Adjust this format according to your date string format
            return formatter.date(from: date)
        }
}


