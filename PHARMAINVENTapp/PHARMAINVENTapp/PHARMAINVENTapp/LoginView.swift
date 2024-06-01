//
//  LoginView.swift
//  PHARMAINVENTapp
//
//  Created by CATALINA MAC  on 5/21/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn: Bool = false
    @State private var showRegistro: Bool = false // Estado para mostrar la vista de registro
    
    var body: some View {
        VStack {
            
            Text("LOGIN")
                .font(.title)
                .padding(.bottom, 0)
                .foregroundColor(.white)
            
            Image("log")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 180)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.bottom, 40)
            
            HStack {
                Image(systemName: "mail")
                    .foregroundColor(.gray)
                    .padding(.leading, 8)
                
                TextField("Nombre de usuario", text: $username)
                    .padding()
                    .cornerRadius(5.0)
            }
            .background(Color.white)
            .frame(height: 50)
            .cornerRadius(15.0)
            
            Spacer()
            
            HStack {
                Image(systemName: "lock.fill")
                    .foregroundColor(.gray)
                    .padding(.leading, 8)
                
                SecureField("Contraseña", text: $password)
                    .padding()
            }
            .background(Color.white)
            .frame(height: 50)
            .cornerRadius(15.0)
            
            // Botón para registrarse
            Button(action: {
                showRegistro.toggle()
            }) {
                Text("Registrate")
                    .padding(.bottom, 10)
                    .padding(.top, 10)
                    .foregroundColor(.white)
            }
            .fullScreenCover(isPresented: $showRegistro) {
                Registro()// Presenta la vista de registro

            }
            
            Spacer()
            
            Button(action: {
                // Lógica para autenticar al usuario.
                isLoggedIn.toggle()
            }) {
                Text("Iniciar Sesión")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 285, height: 50)
                    .background(colorBtn) // Usa tu color celeste aquí
                    .cornerRadius(15.0)
                    .font(.system(size: 18, weight: .bold))
            }
            .fullScreenCover(isPresented: $isLoggedIn) {
                MainMenu()
            }
            .padding(.horizontal, 0)
            .disabled(username.isEmpty || password.isEmpty) // Deshabilita el botón si el nombre de usuario o la contraseña están vacíos.
            
            Spacer()
        }
        .padding()
        .background(colorFondo) // Usa tu color de fondo aquí
        .edgesIgnoringSafeArea(.all)
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
