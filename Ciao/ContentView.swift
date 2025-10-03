//
//  ContentView.swift
//  Ciao
//
//  Created by Joaquin vigil on 10/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("CIAO")
                .font(.title)
                .fontWeight(.bold)
            Spacer()
        }
        .padding()
    }
}
struct LoginView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        ZStack {
            // Background
            Color.blue.opacity(0.2) // light blue
                .ignoresSafeArea()

            VStack {
                Spacer()

                // Title
                Text("Welcome Back")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 40)

                // Email field
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal)

                // Password field
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .padding(.bottom, 20)

                Spacer()

                // Buttons
                VStack(spacing: 15) {
                    Button(action: {
                        // Handle login action
                    }) {
                        Text("Login")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(10)
                    }

                    Button(action: {
                        // Handle sign up action
                    }) {
                        Text("Sign Up")
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 40)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
#Preview {
    ContentView()
}
