//
//  Tab.swift
//  GmailAPP
//
//  Created by Hlwan Aung Phyo on 2024/07/05.
//

import SwiftUI

struct Tab: View {
    @State var selection = 1
    var body: some View {
        TabView(selection: $selection,
                content:  {
            ContentView()
                .tabItem {
                    Image(systemName:selection == 1 ? "envelope.fill" : "envelope")   
                }
                .badge(99)
                .tag(1)
            chatView()
                .tabItem {
                    Image(systemName:selection == 2 ? "message.fill" : "message")
                        
                }
                .tag(2)
            Text("meet")
                .tabItem { 
                    Image(systemName: selection == 3 ? "video.fill" : "video")
                }
                .tag(3)
        })
        .tint(.red)
    }
}

#Preview {
    Tab()
}
