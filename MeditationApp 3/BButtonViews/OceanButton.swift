//
//  ForestButton.swift
//  BeCenteredApp
//
//  Created by Jennifer Simond on 10/2/23.
//

import SwiftUI

struct OceanButton: View {
    var body: some View {
        HStack{
        
            
            Image(systemName: "water.waves")
                .font(.system(size: 42))
                .scaledToFit()
                .frame(width: 70, height: 60)
                .foregroundColor(.white)
            
            VStack(alignment:.center, spacing: 19){
                
                Text("Ocean Meditation")
                    .font(.title)
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
                    .foregroundColor(Color(.white))
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                
            }
        }
        .frame(width:320, height: 60)
//        .padding(.trailing,1)
//        .padding(.leading, 1)
        .padding()
        .background(Color("OceanButton").opacity(1))

        .cornerRadius(24)
        .padding(.bottom,2).shadow(color: Color.gray.opacity(0.7),radius: 2, y:5)
    }
}

    


struct OceanButton_Previews: PreviewProvider {
    static var previews: some View {
        OceanButton()
    }
}
