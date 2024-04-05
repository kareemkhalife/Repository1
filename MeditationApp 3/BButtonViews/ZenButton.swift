//
//  ForestButton.swift
//  BeCenteredApp
//
//  Created by Jennifer Simond on 10/2/23.
//

import SwiftUI

struct ZenButton: View {
    var body: some View {
        
        HStack{
            
            Image(systemName: "figure.mind.and.body")
                .font(.system(size: 50))
//                .padding(.trailing,22.0)
                .scaledToFit()
                
                .frame(width: 80, height: 60)
                .foregroundColor(.white)
            
            VStack(alignment:.center, spacing: 19){
                
                Text("Zen Meditation ")
                    .font(.title)
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
                    .foregroundColor(Color(.white))
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    .padding(.trailing,25)
                
            }
        }
        .frame(width:320, height: 60)
//        .padding(.trailing,5)
//        .padding(.leading, 4)
        .padding()
        .background(Color("ZenButton").opacity(1))

        .cornerRadius(24)
        .padding(.bottom,2).shadow(color: Color.gray.opacity(0.7),radius: 2, y:5)
    }
}

    


struct ZenButton_Previews: PreviewProvider {
    static var previews: some View {
        ZenButton()
    }
}
