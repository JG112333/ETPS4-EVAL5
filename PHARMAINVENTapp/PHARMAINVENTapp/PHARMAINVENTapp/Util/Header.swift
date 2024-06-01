//
//  Header.swift
//  PHARMAINVENTapp
//
//  Created by CATALINA MAC  on 5/22/24.
//

import SwiftUI

struct Header: View {

    var body: some View {
        HStack{
            Spacer()
            
            
            //Image(systemName: "mappin")
                //    .resizable()
                //    .aspectRatio(contentMode: .fit)
                //    .frame(width: 25, height: 25)
                //    .foregroundColor(.blue)
            Text("MENU PRINCIPAL")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.white)                //.resizable()
                .scaledToFit()
                .frame(width: 180, height: 40)
            
            Image(systemName: "chevron.down")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
                    .foregroundColor(.black)
            Spacer()
            
            ZStack{


            }
           
            ZStack{
                Image("logoUser")
                    .resizable()
                    .frame(width: 45, height: 45)
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(20)
            }

        }.padding(.horizontal)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
