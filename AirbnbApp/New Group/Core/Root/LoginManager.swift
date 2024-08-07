//
//  LoginManager.swift
//  AirbnbApp
//
//  Created by Nazrin Atayeva on 07.08.24.
//

import SwiftUI
import Combine

class LoginManager: ObservableObject {
    @Published var isLoggedIn = true
    
    private let loginSubject = PassthroughSubject<Bool, Never>()
    var loginPublisher: AnyPublisher<Bool, Never> {
        loginSubject.eraseToAnyPublisher()
    }
    
    func logIn() {
        
        isLoggedIn = false
        
        // If successful, emit true on the subject:
        loginSubject.send(true)
    }
    
    func logOut() {
        isLoggedIn = false
    }
}
