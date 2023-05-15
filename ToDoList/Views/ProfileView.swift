//
//  ProfileView.swift
//  ToDoList
//
//  Created by KAARTHIKEYA K on 03/05/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel  = ProfileViewViewModel()
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    profile(user: user)
                } else {
                    Text("Loading Profile....")
                }
            }
            .navigationTitle("Profile")
            .onAppear{
                viewModel.fetchUser()
            }
            .padding(50)
        }
    }

    @ViewBuilder
    func profile(user: User) -> some View {
        //Avatar
        Image(systemName: "person.circle.fill")
            .resizable()
            .aspectRatio(contentMode: .fit)
//                    .foregroundColor(Color.blue)
            .frame(width: 125, height: 125)
            .padding()
        //Info: Name, Email, Member Since
        VStack(alignment: .center) {
            HStack{
                Text("Name:")
                    .bold()
                Text(user.name)
            }
            .padding(3)
            HStack{
                Text("Email:")
                    .bold()
                Text(user.email)
            }
            .padding(3)
            HStack{
                Text("Member Since:")
                    .bold()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
            .padding(3)
        }
        .padding()
        
        // Signout
        TLButton(title: "Log Out", background: .red) {
            viewModel.logOut()
        }
        .padding()
        
        Spacer()
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
