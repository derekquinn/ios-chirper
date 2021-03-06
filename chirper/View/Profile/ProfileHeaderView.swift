import SwiftUI
import Kingfisher

struct ProfileHeaderView: View {
    @State var selectedFilter: TweetFilterOptions = .tweets
    @Binding var isFollowed: Bool // binding var cant be initialized
    let viewModel: ProfileViewModel
    
    var body: some View {
        VStack {
            KFImage(URL(string: viewModel.user.profileImageUrl))
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 120, height: 120)
                .cornerRadius(120/2)
                .shadow(color: .green, radius: 20, x:0.0, y: 0.0)
            
            Text(viewModel.user.fullName)
                .font(.system(size: 16, weight: .semibold))
                .padding(.top, 8)
            
            Text("@\(viewModel.user.userName)")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Hoover 07 grad LETS GO VIKES")
                .padding(.top, 8)
                .font(.system(size:14))
                .padding(.top, 8)
            
            HStack(spacing: 40) {
                VStack{
                    Text("12")
                        .font(.system(size:16)).bold()
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                }
                
                VStack{
                    Text("10,453")
                        .font(.system(size:16)).bold()
                    Text("Following")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
            .padding()
            
            ProfileActionButtonView(viewModel: viewModel, isFollowed: $isFollowed)
            

            Spacer()
        }
    }
}
