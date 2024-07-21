//
//  chatView.swift
//  GmailAPP
//
//  Created by Hlwan Aung Phyo on 2024/07/06.
//

import SwiftUI

struct chatView: View {
    @State var searchText:String = ""
    var body: some View {
        VStack{
            searchBarView
            HStack{
                Text("ホーム")
                    .font(.title)
                Spacer()
//                    RoundedRectangle(cornerRadius: 25.0)
//                        .frame(width:75,height: 25)
//                        .background(.ultraThinMaterial)
                    
                
                Button {
                    
                } label: {
                    HStack{
                        Image(systemName: "message.fill")
                        Text("未読")
                    }
                    .padding(.horizontal)
                    .foregroundColor(.black)
                    
                    .background(
                        Capsule()
                            .stroke(Color.gray,lineWidth: 1)
                    )
                }

                    
                
                            }
            .padding(.horizontal,5)
            Spacer()
        }
    }
}


extension chatView{
    private var searchBarView:some View {
        Section {
            HStack{
                Image(systemName:"line.3.horizontal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:15)
                    .padding()
                TextField("メールを検索", text: $searchText)
                    .padding(.horizontal)
                //                    .frame(maxWidth: .infinity)
                //                    .frame(height: 50)
                    .background(Color(.systemGray6))
                //                    .cornerRadius(10)
                //                    .shadow(radius: 5)
                Image(systemName:"person.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 30)
                    .padding()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .shadow(radius: 10)
        }
    }
    
}
#Preview {
    chatView()
}
