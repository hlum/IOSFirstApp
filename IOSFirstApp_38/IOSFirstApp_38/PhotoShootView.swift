import SwiftUI

struct PhotoShootView: View {
    @State private var selectedImage: String? = nil
    @State var showing = false
    @State var showing1 = false
    @State var showing2 = false
    //    @State var showing3 = false
    var body: some View {
        VStack{
            Text("初めてのフィルム写真")
                .font(.title)
                .fontWeight(.regular)
                .zoomable()
            
            Image("lake")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical, 5.0)
                .onTapGesture {
                    showing.toggle()
                }.fullScreenCover(isPresented: $showing,content: {
                    ZoomView(imgName: "lake",showing1: $showing1, showing2: $showing2, showing: $showing)
                })
                
            HStack{
                Image("riverside")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding([.top, .bottom, .trailing], 2.0)
                    .onTapGesture {
                        showing1.toggle()
                    }.fullScreenCover(isPresented: $showing1,
                                      content:{
                        ZoomView(imgName: "riverside", showing1: $showing1, showing2: $showing2, showing: $showing)                    })
                
                Image("riverside2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.vertical, 2.0)
                    .onTapGesture {
                        showing2.toggle()
                    }.fullScreenCover(isPresented: $showing2,
                                      content: {
                        ZoomView(imgName: "riverside2", showing1: $showing1, showing2: $showing2, showing: $showing)
                    })
                
            }
            More()
        }
        .padding(.bottom,10)
}
}

    
    struct More: View{
        @State var isShowingSheet = false
        
        
        var body: some View{
            VStack {
                Button{
                    isShowingSheet.toggle()
                }
            label:{
                Text("全ての写真を見る")
                    .foregroundColor(.black)
                    .font(.callout)
                    .frame(width:160,height:40)
                    .border(Color.black)
                
            }.padding(.bottom,50)
            }
            .sheet(isPresented: $isShowingSheet){
                //View that shows up on the sheet
                PhotoAlbumView()
                Button{
                    isShowingSheet = false
                }label:{
                    Image("closeButton")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50, alignment:.center)
                }
                .padding(.bottom, 50)
                
            }
        }
    }
//    
//    #Preview(){
//        PhotoShootView(num: )
//    }
