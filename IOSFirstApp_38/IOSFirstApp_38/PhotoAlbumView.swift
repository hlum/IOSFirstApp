//
//  PhotoAlbumView.swift
//  IOSFirstApp_38
//
//  Created by Hlwan Aung Phyo on 2024/05/03.
//

import SwiftUI
struct PhotoAlbumView:View {
    @State var selectedTag = 1
    init(){
        UIPageControl.appearance()
            .currentPageIndicatorTintColor = .black
        UIPageControl.appearance()
            .pageIndicatorTintColor = .gray.withAlphaComponent(5.0)
    }

    var body: some View {
        TabView(selection: $selectedTag){
            Photos(photoName1: "4lakeBuilding",
                   photoName2: "1akiba",
                   photoName3: "2building",
                   photoName4: "3crossWalk")
                .tabItem {
                    Text("1")
                }.tag(1)
            Photos(photoName1: "5",
                   photoName2: "6",
                   photoName3: "7",
                   photoName4: "8")
                .tabItem {
                    Text("2")
                }.tag(2)
            Photos(photoName1: "9",
                   photoName2: "10",
                   photoName3: "11",
                   photoName4: "12")
                .tabItem {
                    Text("2")
                }.tag(3)
            Photos(photoName1: "13",
                   photoName2: "14",
                   photoName3: "15",
                   photoName4: "16")
                .tabItem {
                    Text("2")
                }.tag(4)
        }
            .tabViewStyle(PageTabViewStyle())
            
    }
}



struct Photos : View {
    @State var showing = false
    var photoName1 : String
    var photoName2 : String
    var photoName3 : String
    var photoName4 : String
    var body: some View {
        VStack{
            HStack{
                Image(photoName1)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.trailing, 4.0)
                    .frame(height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                Image(photoName2)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 300, alignment: .center)
                    .padding(.trailing, 4.0)


            }
            .padding(.top, 10.0)
            HStack{
                Image(photoName3)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.trailing, 4.0)
                    .frame(height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                    .onTapGesture {
//                        showing.toggle()
//                    }
//                    .fullScreenCover(isPresented: $showing,
//                                     content: {ZoomView(showing: $showing,
//                                                        imageName: photoName3)})
//                
                Image(photoName4)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 300, alignment: .center)
                    .padding(.trailing, 4.0)
//                    .onTapGesture {
//                        showing.toggle()
//                    }
//                    .fullScreenCover(isPresented: $showing,
//                                     content: {ZoomView(showing: $showing,
//                                                        imageName: photoName4)})
//                

            }
                    }
        
        
    }
}

//#Preview {
//    PhotoAlbumView()
//}
