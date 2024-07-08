//
//  MapView.swift
//  IOSFirstApp_38
//
//  Created by Hlwan Aung Phyo on 2024/05/03.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State var showing = false
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 35.8075638, longitude:139.0983959
        ),
        latitudinalMeters: 300.0,
        longitudinalMeters: 300.0
        )


    var body: some View{
        let facts = """
    1. 東京から2時間、多摩川沿いのキャンプ場
    2. 河原でキャンプ、川遊び、釣りが楽しめる
    3. ログハウス、バンガロー、バーベキューハウスあり
    4. テントサイトは河原と林間の2種類
    5. 季節割引、レンタル品無料、ストーブ貸出
    6. 予約は利用日2日前まで、当日空きあれば可

    """
        VStack{
            
            Text("3/5/2024")
                .font(.headline)
                .frame(width: 400, height: 50, alignment: .center)
                .padding(.top,200)
            
            Map(coordinateRegion: $region)
                .edgesIgnoringSafeArea(.bottom)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 6.0, y: 8.0)
                .frame(width: 300, height: 300, alignment: .center)
                .onTapGesture {
                    showing.toggle()
                }.fullScreenCover(isPresented: $showing, content: {
                    ZoomMap(showing: $showing)
                })
            Text("氷川キャンプ場へ行きました。")
                .font(.title)
                .fontWeight(.semibold)
                .frame(width: 400, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            HStack{
                    Text(facts)
                        .font(.headline)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    
            }
            .frame(width: 350, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding(.bottom,200)
        }

        
    }
        }


struct ZoomMap : View {
    @Binding var showing : Bool
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 35.8075638, longitude:139.0983959
        ),
        latitudinalMeters: 300.0,
        longitudinalMeters: 300.0
    )
    var body: some View {
        ZStack{
            
            Map(coordinateRegion: $region)
                .edgesIgnoringSafeArea(.bottom)
                .ignoresSafeArea()
            Button{
                showing.toggle()
            }label:{
                Image("closeButton")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50, alignment:.center)
            }
            .padding(.top, 600)
            
        }
        
    }
}
