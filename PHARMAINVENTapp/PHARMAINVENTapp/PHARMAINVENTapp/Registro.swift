//
//  Registro.swift
//  PHARMAINVENTapp
//
//  Created by CATALINA MAC  on 5/21/24.
//

import SwiftUI

struct Registro: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showAlert: Bool = false
    
    var body: some View {
        VStack {
            
            Text("REGISTRO")
                .font(.title)
                .padding(.bottom, 0)
                .foregroundColor(.white)
                .frame(width: 300, height: 40)
            // Agregar botón de regreso
            HStack {
                BotonAtras(destination: LoginView())
                Spacer()
            }
            .padding(.leading, 0)
            
            Image("logoUser")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 180)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.bottom, 70)
            
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
            
            Spacer()
            
            Button(action: {
                // Lógica para autenticar al usuario.
                showAlert = true
            }) {
                Text("Crear Cuenta")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 285, height: 50)
                    .background(colorBtn) // Cambiar el color del botón según sea necesario
                    .cornerRadius(15.0)
                    .font(.system(size: 25, weight: .bold))
            }
            .padding(.horizontal, 0)
            .disabled(username.isEmpty || password.isEmpty) // Deshabilita el botón si el nombre de usuario o la contraseña están vacíos.
        }
        .padding()
        .background(colorFondo) // Cambia el color de fondo según sea necesario
        .edgesIgnoringSafeArea(.all)
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Cuenta creada"), message: nil, dismissButton: .default(Text("Aceptar")))
        }
    }
}


struct Registro_Previews: PreviewProvider {
    static var previews: some View {
        Registro()
    }
}
