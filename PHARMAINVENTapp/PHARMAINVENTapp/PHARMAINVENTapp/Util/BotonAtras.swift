//
//  botonAtras.swift
//  PHARMAINVENTapp
//
//  Created by CATALINA MAC  on 5/22/24.
//

import SwiftUI

struct BotonAtras<Destination: View>: View {
    var destination: Destination
    @State private var isPresented = false

    var body: some View {
        Button(action: {
            isPresented.toggle()
        }) {
            HStack {
                Image(systemName: "arrow.left")
                Text("Back")
                    .bold()
                
            }
            .padding()
            .frame(width: 95, height: 40)
            .background(colorNegro)
            .foregroundColor(.white)
            .cornerRadius(26)
        }
        .fullScreenCover(isPresented: $isPresented) {
            destination
        }
    }
}

struct botonAtras_Previews: PreviewProvider {
    static var previews: some View {
        BotonAtras(destination: LoginView())
    }
}
