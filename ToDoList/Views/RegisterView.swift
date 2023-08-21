//
//  RegisterView.swift
//  ToDoList
//
//  Created by Евгений Гончаров on 21.08.2023.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            HeaderView(title: "Регистрация", subtitle: "Научись все успевать!", angle: -15, backgroung: .orange)
            
            VStack {
                VStack {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    TextField("Ваше имя", text: $viewModel.name)
                        .textFieldStyle(.roundedBorder)
                    TextField("Email", text: $viewModel.email)
                        .textFieldStyle(.roundedBorder)
                        .autocapitalization(.none)
                    SecureField("Пароль", text: $viewModel.password)
                        .textFieldStyle(.roundedBorder)
                    
                    TLButton(title: "Регистрация") {
                        viewModel.register()
                    }
                }
                .padding()
            }
            .background(Color("grey"))
            .cornerRadius(10)
            .padding()
            .offset(y: -50)
            
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
