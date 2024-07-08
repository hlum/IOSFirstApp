//
//  ContentView.swift
//  IOSFirstApp_38
//
//  Created by Hlwan Aung Phyo on 2024/05/02.
//
///Note :
//Boolean ? ____ :______

import SwiftUI
import Zoomable
struct ContentView: View {
    @State var selectedTag=1
    init(){
        UIPageControl.appearance()
            .currentPageIndicatorTintColor = .black
        UIPageControl.appearance()
            .pageIndicatorTintColor = .gray.withAlphaComponent(5.0)
    }
    var body: some View {
        TabView(selection: $selectedTag){
            CamreaDetailView()
                .tabItem {
                    Label("camera", systemImage: "camera.fill")
                }.tag(1)
            PhotoShootView()
                .tabItem {
                    Label("photoshoot",systemImage: "photo")
                }.tag(2)
            MapView()
                .tabItem {
                    Label("map",systemImage: "map")
                }.tag(3)
            OkutamaPhotos()
                .tabItem {
                    Label("OkutamaPhotos",systemImage: "tent")
                }.tag(4)
        }
        .tabViewStyle(PageTabViewStyle())
        .ignoresSafeArea()
        
    }
}



#Preview {
    ContentView()
}
