//
//  MainMenu.swift
//  PHARMAINVENTapp
//
//  Created by CATALINA MAC  on 5/21/24.
//

import SwiftUI

struct MainMenu: View {
    @State private var showBt1View = false
    @State private var showBt2View = false
    @State private var showBt3View = false
    @State private var showBt4View = false
    


    var body: some View {
        
        VStack{
            Header()
            
            
            HStack {
                    BotonAtras(destination: LoginView())
                    Spacer()
                  }
            .padding(.leading, 25)
            
        ZStack {
            


            colorFondo
                .edgesIgnoringSafeArea(.all)
            
            
            VStack(spacing: 10) {
                
                
                
             
            HStack(spacing: 10){
                
                Button(action: {
                    showBt1View.toggle()
                }) {
                    CustomButton(iconName: "agregarProducto", label: "Agregar Producto")
                }
                .fullScreenCover(isPresented: $showBt1View) {
                    AgregarProducto()
                }

                
                Button(action: {
                    showBt2View.toggle()
                }) {
                    CustomButton(iconName: "agregarExistencia", label: "Agregar Existencia")
                }
                .fullScreenCover(isPresented: $showBt2View) {
                    ActualizarExistencia()
                }
                
                
            }
                
                HStack(spacing: 10){
                Button(action: {
                    showBt3View.toggle()
                }) {
                    CustomButton(iconName: "verInventario", label: "Ver Inventario")
                }
                .fullScreenCover(isPresented: $showBt3View) {
                    VerInventario()
                }
                
                Button(action: {
                    showBt4View.toggle()
                }) {
                    CustomButton(iconName: "verVenta", label: "Ver Ventas")
                }
                .fullScreenCover(isPresented: $showBt4View) {
                   VerVentas()
                }
            }
                
                
            }
            .padding()
        }
        
        
        
    }.background(colorFondo) // Usa tu color de fondo aquí
        .edgesIgnoringSafeArea(.all)
        
        
        
    }
}


struct CustomButton: View {
    var iconName: String
    var label: String
    
    var body: some View {
        VStack {
            VStack {
                Image(iconName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .padding(.top)
                
                Text(label)
                    .foregroundColor(.white)
                    .padding(.bottom)
            }
            .frame(width: 150, height: 100)
            .background(colorNaranja)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}


struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}
