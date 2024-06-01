//
//  VerVentas.swift
//  PHARMAINVENTapp
//
//  Created by MacOsX on 5/25/24.
//

import SwiftUI

struct VerVentas: View {
    var body: some View {
        VStack{

            colorFondo.edgesIgnoringSafeArea(.all)
                Text("VENTAS")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.white)                //.resizable()
                .scaledToFit()
                .frame(width: 200, height: 40)
                .padding(.top, 10)
            
                HStack {
                    BotonAtras(destination: MainMenu())
                    Spacer()
                  }
            .padding(.leading, 10)
                
                VStack{
                    
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 300, height: 400)
                   
                }
            
            VStack{
                
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 300, height: 50)
                    
            }.foregroundColor(colorFondo)
            
            Spacer()
            
        }
        .background(colorFondo) // Usa tu color de fondo aquí
        //.edgesIgnoringSafeArea(.all)
        //.padding()
            //Spacer()

        
            
            
            
            
        }

}

struct VerVentas_Previews: PreviewProvider {
    static var previews: some View {
        VerVentas()
    }
}
