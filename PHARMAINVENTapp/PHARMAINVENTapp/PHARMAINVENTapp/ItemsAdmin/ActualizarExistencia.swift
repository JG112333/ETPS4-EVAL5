//
//  AgregarExistencia.swift
//  PHARMAINVENTapp
//
//  Created by CATALINA MAC  on 5/21/24.
//

import SwiftUI

struct ActualizarExistencia: View {
        @State private var codigoProducto = ""
        @State private var nombreProducto = ""
        @State private var precio = ""
        @State private var descripcion = ""
        @State private var cantidad = ""
        @State private var categoria = ""
        @State private var showAlert: Bool = false
        
        var body: some View {
            
            VStack{
                Text("ACTUALIZARR EXISTENCIA")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.white)                //.resizable()
                    .scaledToFit()
                    .frame(width: 240, height: 40)
                    .padding(.top, 20)
                
                HStack {
                        BotonAtras(destination: MainMenu())
                        Spacer()
                      }
                .padding(.leading, 10)
                
                
            VStack {
                
                HStack{
                TextField("Código de producto", text: $codigoProducto)
                    .padding()

                Image(systemName: "qrcode")
                    .padding()
                }
                .background(Color.white)
                .frame(height: 40)
                .cornerRadius(15.0)
                .padding(.bottom, 10)
                
                HStack{
                TextField("Nombre de producto", text: $nombreProducto)
                    .padding()
                Image(systemName: "magnifyingglass")
                    .padding()
                }
                .background(Color.white)
                .frame(height: 40)
                .cornerRadius(15.0)
                .padding(.bottom, 10)
                
                
                HStack{
                TextField("Precio", text: $precio)
                    .padding()
                }
                .background(Color.white)
                .frame(height: 40)
                .cornerRadius(15.0)
                .padding(.bottom, 10)
                
                HStack{
                TextField("Descripción", text: $descripcion)
                    .padding()
                }
                .background(Color.white)
                .frame(height: 40)
                .cornerRadius(15.0)
                .padding(.bottom, 10)
                    
                HStack{
                TextField("Cantidad", text: $cantidad)
                    .padding()
                }
                .background(Color.white)
                .frame(height: 40)
                .cornerRadius(15.0)
                .padding(.bottom, 10)
                
                HStack{
                TextField("Categoría", text: $categoria)
                    .padding()
                }
                .background(Color.white)
                .frame(height: 40)
                .cornerRadius(15.0)
                
                
                Spacer()
            }
            //.background(Color.white)
            .padding()
                
                
                Button(action: {
                    // Lógica para autenticar al usuario.
                    showAlert = true
                }) {
                    Text("+ Actualizar")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 285, height: 50)
                        .background(colorBtn) // Cambiar el color del botón según sea necesario
                        .cornerRadius(15.0)
                        .font(.system(size: 25, weight: .bold))
                }
                //.padding(.horizontal, 0)
                .padding(.bottom, 20)
                //.disabled(username.isEmpty || password.isEmpty) // Deshabilita el botón si el nombre de usuario o la contraseña están vacíos.
                
                
            }
            .background(colorFondo) // Usa tu color de fondo aquí
            .edgesIgnoringSafeArea(.all)
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Existencia Actualizada Con Exito"), message: nil, dismissButton: .default(Text("Aceptar")))
            }
        }
    }
struct AgregarExistencia_Previews: PreviewProvider {
    static var previews: some View {
        ActualizarExistencia()
    }
}
