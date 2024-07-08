import SwiftUI


struct ContentView: View {
    
    @StateObject var viewModel = UserViewModel()
    @State var searchText: String = ""
    
    var filteredUsers: [User] {
        if searchText.isEmpty {
            return viewModel.sortedUsers
        } else {
            return viewModel.sortedUsers.filter { user in
                user.name.contains(searchText) ||
                user.emailAdress.contains(searchText) ||
                user.title.contains(searchText) ||
                user.body.contains(searchText)
            }
        }
    }
    
    var body: some View {
        NavigationView {
            // List of Emails
            List {
                SearchBarView
                
                ForEach(filteredUsers) { user in
                    MailPreview(user: user)
                        .listRowSeparator(.hidden)
                        .padding(.vertical, 4)
                    
                }
                .onDelete(perform: viewModel.deleteUser)
            }
            
            .listStyle(PlainListStyle())
        }
    }
    
}

extension ContentView{
    private var SearchBarView: some View{
        Section {
            HStack{
                Image(systemName:"line.3.horizontal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:15)
                    .padding()
                TextField("メールを検索", text: $searchText)
                    .padding(.horizontal)
                //                    .frame(maxWidth: .infinity)
                //                    .frame(height: 50)
                    .background(Color(.systemGray6))
                //                    .cornerRadius(10)
                //                    .shadow(radius: 5)
                Image(systemName:"person.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 30)
                    .padding()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .shadow(radius: 10)
            
        }
        .listRowSeparator(.hidden)
        
    }
}


#Preview {
    ContentView()
}
