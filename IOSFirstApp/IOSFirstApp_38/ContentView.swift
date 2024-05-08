//
//  ContentView.swift
//  IOSFirstApp_38
//
//  Created by Hlwan Aung Phyo on 2024/05/02.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTag = 1
    
    init(){
        UIPageControl.appearance()
            .currentPageIndicatorTintColor = .black
        UIPageControl.appearance()
            .pageIndicatorTintColor = .gray.withAlphaComponent(5.0)
    }
    
    
    var body: some View {
        TabView(selection: $selectedTag) {
            HomeTabView()
                .tabItem {
                    Label("Home",systemImage: "house")
                }.tag(1)
            progressViewExample()
                    .tabItem {
                    Label("SystemImage",systemImage: "gearshape")
                }.tag(2)
            Text("Tab Content 3")
                .tabItem {
                    Label("Robot",systemImage:"photo")
                }.tag(3)
        }
        .font(.largeTitle)
        .tabViewStyle(PageTabViewStyle())
    }
}
struct HomeTabView:View {
    var body: some View {
        VStack {
            Image("lake")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 500.0, height: 500.0)
                .padding(.horizontal, 18.6)
            
            Text("Lake")
                .font(.system(size: 60))
                .fontWeight(.heavy)
                .foregroundColor(.orange)
                
        }
        
        
    }
}
struct progressViewExample: View{
    @State var count = 0.0
    
    //this uses the users clock to publish an update every second
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View{
        VStack {
            Text("Circular Progress")
            ProgressView()
                .progressViewStyle(.circular)
            Spacer()
            Text("Linear Progress")
            ProgressView("Downloading...", value: count, total: 100)
                .progressViewStyle(.linear)
        }.padding()
        
        //this function recieves the update and then performs the function
        .onReceive(timer) { _ in
                if count < 100 {
                    count += 2
                }
            }
    }
}

#Preview {
    ContentView()
}

