//
//  ContentView.swift
//  CalculatorApp_24CM0138
//
//  Created by Hlwan Aung Phyo on 2024/06/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.black)
            VStack {
                Spacer()
                Text("24CM0138 ラワンアウンピョウ")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding(.trailing)
                
                Spacer()
                Spacer()
                
                HStack{
                    ButtonView(textColor: .black, backgroundColor: .gray, text: "AC")
                    ButtonView(textColor: .black, backgroundColor: .gray, text: "+/-")

                    ButtonView(textColor: .black, backgroundColor: .gray, text: "%")

                    ButtonView(textColor: .white, backgroundColor: .orange, text: "÷")

                }
                HStack{
                    ButtonView(textColor: .white, backgroundColor: .black, text: "7")
                    ButtonView(textColor: .white, backgroundColor: .black, text: "8")


                    ButtonView(textColor: .white, backgroundColor: .black, text: "9")

                    ButtonView(textColor: .white, backgroundColor: .orange, text: "x")

                }

                HStack{
                    ButtonView(textColor: .white, backgroundColor: .black, text: "4")
                    ButtonView(textColor: .white, backgroundColor: .black, text: "5")

                    ButtonView(textColor: .white, backgroundColor: .black, text: "6")

                    ButtonView(textColor: .white, backgroundColor: .orange, text: "-")

                }

                HStack{
                    ButtonView(textColor: .white, backgroundColor: .black, text: "1")
                    ButtonView(textColor: .white, backgroundColor: .black, text: "2")

                    ButtonView(textColor: .white, backgroundColor: .black, text: "3")

                    ButtonView(textColor: .white, backgroundColor: .orange, text: "+")

                }

                HStack{
                    ButtonView(textColor: .white, backgroundColor: .black, text: "0")
                        .padding(.trailing,90)
                    
                    

                    ButtonView(textColor: .white, backgroundColor: .black, text: ".")

                    ButtonView(textColor: .white, backgroundColor: .orange, text: "=")

                }

                
            }.padding(.bottom,50)
        }.ignoresSafeArea(.all)
    }
}

struct ButtonView:View{
    let textColor : Color
    let backgroundColor : Color
    let text : String
    //    let function : ()
    
    
    var body:some View{
        ZStack{
            Circle()
                .frame(width:CGFloat(80))
                .foregroundColor(backgroundColor)
            Text(text)
                .font(.largeTitle)
                .foregroundColor(textColor)
        }
    }
    
}

#Preview {
    ContentView()
}
