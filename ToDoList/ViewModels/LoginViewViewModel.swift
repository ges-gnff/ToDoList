//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Евгений Гончаров on 21.08.2023.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() { }
    
    func login() {
        guard validate() else { return }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Пожалуйста заполните все поля"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Введите действительный Email"
            return false
        }
        
        return true
    }
}
