//
//  LoginView.swift
//  ToDoList
//
//  Created by KAARTHIKEYA K on 03/05/23.
//

import SwiftUI

struct LoginView: View {
        
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                HeaderView(title: "Too Doo", subtitle: "Get Things Done", background: .pink)
                
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundColor(Color.red)
                        .font(.custom("Futura", size: 20))
                }
    
                Form{
                    Section{
                        TextField("Email Id", text: $viewModel.email)
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                        SecureField("Password", text: $viewModel.password)
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                    }
                }
                .frame(height: 160)
                .padding(.top, -15)
                .padding(.bottom, 0)
                
                
                TLButton(title: "Login", background: .blue) {
                    viewModel.login()
                }
                
                
                VStack{
                    Text("First Time Here?")
                    NavigationLink {
                        RegisterView()
                    } label: {
                        Text("Create an account")
                    }
                }
                .padding(.top, 50)
                
                Spacer()
            }
            .ignoresSafeArea()
            .edgesIgnoringSafeArea([.top, .leading, .trailing])
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
