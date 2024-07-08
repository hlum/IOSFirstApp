//
//  OkutamaPhotos.swift
//  IOSFirstApp_38
//
//  Created by Hlwan Aung Phyo on 2024/05/06.
//

import SwiftUI


struct OkutamaPhotos: View {
    @State var isShowingSheet = false
    
    var body: some View {
        VStack{
            Image("okutama1")
                .resizable()
                .aspectRatio(contentMode: .fit)
            MorePhotosSheet()
        }
        
    }
}

struct MorePhotosSheet: View {
    @State var selectedTag = 1
    @State var isShowingSheet = false
    
    init(){
        UIPageControl.appearance()
            .currentPageIndicatorTintColor = .black
        UIPageControl.appearance()
            .pageIndicatorTintColor = .gray.withAlphaComponent(5.0)
    }
    var body: some View {
        VStack{
            
            Button{
                isShowingSheet.toggle()
            }
        label:{
            Text("写真を見る")
                .font(.title2)
            
        }.buttonStyle(.bordered)
                .foregroundColor(.black)
                .frame(width: 300, height: 100, alignment: .center)
                .padding(.top,10)
        }
        .sheet(isPresented:$isShowingSheet){
            VStack{
                TabView(selection: $selectedTag){
                    PhotoFormat(imgName:"girlfriend")
                        .tabItem {
                            Text("1")
                        }.tag(1)
                    PhotoFormat(imgName: "okutama2")
                        .tabItem {
                            Text("2")
                        }.tag(2)
                    PhotoFormat(imgName: "okutama3")
                        .tabItem{
                            Text("3")
                        }.tag(3)
                    PhotoFormat(imgName: "okutama4")
                        .tabItem {
                            Text("4")
                        }.tag(4)
                    PhotoFormat(imgName: "okutama5")
                        .tabItem {
                            Text("5")
                        }.tag(5)
                    PhotoFormat(imgName: "okutama6")
                        .tabItem {
                            Text("6")
                        }.tag(6)
                    PhotoFormat(imgName: "okutama7")
                        .tabItem {
                            Text("7")
                        }.tag(7)
                }
                .tabViewStyle(PageTabViewStyle())
                Button{
                    isShowingSheet.toggle()
                }
            label:{
                Image("closeButton")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50, alignment:.center)            }
                    }
            
        }
    }
}
struct PhotoFormat:View {
    var imgName :String
    var body: some View {
        Image(imgName)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}
//#Preview {
//    OkutamaPhotos()
//}
