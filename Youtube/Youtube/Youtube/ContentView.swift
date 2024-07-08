//
//  ContentView.swift
//  Youtube
//
//  Created by Hlwan Aung Phyo on 2024/05/09.
//

import SwiftUI

struct ContentView: View {
    var dayOfWeek : String
    var imageName : String
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            VStack{
                Text("東京")
                    .font(.system(size: 33, weight: .bold, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                VStack(spacing:8){
                    Image(systemName:"cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("20°")
                        .font(.system(size: 70, weight: .bold, design: .default))
                        .foregroundColor(.white)
                HStack{
                    VStack{
                        Text(dayOfWeek)
                            .font(.system(size: 20,
                                          weight: .bold,
                                          design: .default))
                            .foregroundColor(.white)
                        Image(systemName: imageName)
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text("19°")
                            .font(.system(size: 20,
                                          weight: .bold,
                                          design: .default))
                            .foregroundColor(.white)
                        
                        

                    }.frame(width: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    VStack{
                        Text(dayOfWeek)
                            .font(.system(size: 20,
                                          weight: .bold,
                                          design: .default))
                            .foregroundColor(.white)
                        Image(systemName: imageName)
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text("20°")
                            .font(.system(size: 20,
                                          weight: .bold,
                                          design: .default))
                            .foregroundColor(.white)
                        
                        

                    }.frame(width: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    VStack{
                        Text(dayOfWeek)
                            .font(.system(size: 20,
                                          weight: .bold,
                                          design: .default))
                            .foregroundColor(.white)
                        Image(systemName: imageName)
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text("15°")
                            .font(.system(size: 20,
                                          weight: .bold,
                                          design: .default))
                            .foregroundColor(.white)
                        
                        

                    }.frame(width: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                        
                    }
                }
                Spacer()
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
