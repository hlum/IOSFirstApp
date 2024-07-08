//
//  Slider.swift
//  JyankenAPP
//
//  Created by Hlwan Aung Phyo on 2024/06/03.
//

import SwiftUI

struct SliderView: View {
    @State var width : Double = 0
    var body: some View {
        VStack{
            Slider(value: $width, in: 1...100, label:{ Text("Size")})
                .padding()
            Text("\(width)")
                .font(.system(size: width))
            Text("hello")
        }.padding()
    }
}

#Preview {
    SliderView()
}
