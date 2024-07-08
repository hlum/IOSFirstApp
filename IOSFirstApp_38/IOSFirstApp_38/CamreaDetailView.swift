//
//  CamreaDetilView.swift
//  IOSFirstApp_38
//
//  Created by Hlwan Aung Phyo on 2024/05/03.
//

import SwiftUI
import UIKit
struct CamreaDetailView: View {
    var body: some View {
        ZStack {
            RectangleView()
            VStack{
                Image("camera")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:400,alignment: .center)
                    .padding(.top,400)
                
                
            }
            
            
            
            
        }
        
    }
}

struct RectangleView: View {
    var body: some View {
        VStack{
            Text("OLYMPUS PEN-D")
                .frame(width: 350, height: 100, alignment: .center)
                .padding(.bottom,50)
                .padding(.trailing,100)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .rotationEffect(.degrees(-45))
            ZStack{
                Rectangle()
                    .frame(width:700,height:200)
                    .foregroundColor(Color(hue: 0.215, saturation: 0.558, brightness: 0.833))
                Text("- タイプ：35mmハーフフレームカメラ\n- レンズ：F.Zuiko 32mm f/1.9\n-シャッタースピード：1/8秒から1/500秒\n- 露出計：内蔵セレン光電池式露出計")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                
            }
            .rotationEffect(.degrees(-45))
            .offset(x:0,y:-40)
            
            
            
            
            Rectangle()
                .frame(width:600,height:10)
                .rotationEffect(.degrees(-45))
                .foregroundColor(.black)
                .offset(x:0,y:400)
            Rectangle()
                .frame(width:600,height:10)
                .rotationEffect(.degrees(-45))
                .foregroundColor(.black)
                .offset(x:0,y:420)
            
            Rectangle()
                .frame(width:600,height:10)
                .rotationEffect(.degrees(-45))
                .foregroundColor(.black)
                .offset(x:0,y:440)
            Rectangle()
                .frame(width:600,height:10)
                .rotationEffect(.degrees(-45))
                .foregroundColor(.black)
                .offset(x:0,y:-550)
            Rectangle()
                .frame(width:600,height:10)
                .rotationEffect(.degrees(-45))
                .foregroundColor(.black)
                .offset(x:0,y:-530)
            Rectangle()
                .frame(width:1000,height:100)
                .rotationEffect(.degrees(-45))
                .foregroundColor(Color(red: 0.616, green: 0.627, blue: 0.623))
                .offset(y:-30)
            
        }
        .offset(x:0,y:-50)
    }
}
#Preview {
    CamreaDetailView()
}
