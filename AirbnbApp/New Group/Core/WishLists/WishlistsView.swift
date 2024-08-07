//
//  WishlistsView.swift
//  AirbnbApp
//
//  Created by Nazrin Atayeva on 22.07.24.
//

import SwiftUI

struct WishlistsView: View {
    @StateObject private var loginManager = LoginManager()
    
    var body: some View {
        NavigationStack {
            Group {
                if loginManager.isLoggedIn {
                    VStack(alignment: .leading, spacing: 4) {
                        
                        Text("Successfully logged In! 😃") .font(.headline)
                        Text("You can log out anytime.")
                            .font(.footnote)
                        
                        Button("Log Out") {
                            loginManager.logOut()
                        }
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .padding(.top)
                        
                        Spacer()
                    }
                    .padding()
                }
                else {
                    VStack(alignment: .leading, spacing: 32) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Log in to view your wishlists!")
                                .font(.headline)
                            
                            Text("You can create, view or edit wishlists once you've logged in.")
                                .font(.footnote)
                        }
                        Button {
                            loginManager.logIn()
                        } label: {
                            Text("Log in")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 360, height: 48)
                                .background(.pink)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                        Spacer()
                    }
                    .padding()
                }
            }
            .navigationTitle("Wishlists")
            
            .onReceive(loginManager.loginPublisher) { isLoggedIn in
                loginManager.isLoggedIn = isLoggedIn
            }
        }
    }
}

#Preview {
    WishlistsView()
}
