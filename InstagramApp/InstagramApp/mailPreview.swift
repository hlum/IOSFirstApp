import SwiftUI

struct MailPreview: View {
    @State var isFav : Bool = false
    var user: User
        
    var body: some View {
        HStack {
            AsyncImage(url: user.userImage) { image in
                image
                    
                    .resizable()
                    .cornerRadius(100)
                    .scaledToFit()
                    .frame(width:50,height: 50)
                    .padding(.trailing,10)
                                        
            } placeholder: {
                ProgressView()
                    .frame(width:60,height: 50)//padding=10 imageWidth = 50
            }

            VStack(alignment: .leading) {
                Text(user.name)
                    .font(.subheadline)
                Text(user.title)
                    .font(.subheadline)
                    .lineLimit(1)
                Text(user.body)
                    .font(.subheadline)
                    .lineLimit(1)
            }
            
            VStack{
                Text(user.date)
                    .font(.system(size: 10))
                    .padding()
                
            
                Image(systemName:isFav ? "star.fill" : "star")
                    .onTapGesture {
                        isFav.toggle()
                    }
                    .foregroundColor(isFav ? .yellow : .black)
                    .font(.system(size: 20))
                    .padding(.bottom)

            }
            
                        
        }
        .frame(maxWidth: .infinity)
        .frame(height: 80)
    }
}


