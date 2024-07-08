//
//  Zoom.swift
//  IOSFirstApp_38
//
//  Created by Hlwan Aung Phyo on 2024/05/10.
//
import SwiftUI
struct ZoomView : View{
    var imgName :String
    @Binding var showing1 : Bool
    @Binding var showing2 : Bool
    @Binding var showing : Bool
    var body: some View{
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                Image(imgName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.vertical, 5.0)
                    .zoomable(doubleTapZoomScale: 2)
                Button{
                    showing = false
                    showing1 = false
                    showing2 = false
                    
                }label:{
                    Image("closeButton")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50, alignment:.center)
                }.padding(.top,50)
                
            }

                }
                    
                                
                    
                }
            
            
}
