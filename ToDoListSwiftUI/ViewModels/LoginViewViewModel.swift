//
//  LoginViewViewModel.swift
//  ToDoListSwiftUI
//
//  Created by Magdalena Popińska on 04/09/2024.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    func login() {
        guard validate() else {
            return
        }
        // Log in
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields"
            return false
        }
        
        guard email.contains("@") && email.contains(".")  else {
            errorMessage = "Please enter valid email"
            return false
        }
        print("Log in Called")
        return true
    }
}

