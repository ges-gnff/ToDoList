//
//  LoginView.swift
//  ToDoList
//
//  Created by Евгений Гончаров on 21.08.2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView(title: "To Do List", subtitle: "Есть дела поважнее", angle: 15, backgroung: .pink)
                
                VStack {
                    VStack {
                        if !viewModel.errorMessage.isEmpty {
                            Text(viewModel.errorMessage)
                                .foregroundColor(.red)
                        }
                        TextField("Email", text: $viewModel.email)
                            .textFieldStyle(.roundedBorder)
                            .autocapitalization(.none)
                        SecureField("Пароль", text: $viewModel.password)
                            .textFieldStyle(.roundedBorder)
                        
                        TLButton(title: "Вход") {
                            viewModel.login()
                        }
                    }
                    .padding()
                }
                .background(Color("grey"))
                .cornerRadius(10)
                .padding()
                .offset(y: -50)
                
                Spacer()
                
                VStack {
                    Text("Еще нет аккаунта?")
                    NavigationLink("Давай его создадим?") {
                        RegisterView()
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color("grey"))
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
