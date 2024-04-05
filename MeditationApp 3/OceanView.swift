//
//  OceanView.swift
//  BeCenteredApp
//
//  Created by Jennifer Simond on 10/2/23.
//

import SwiftUI

struct OceanView: View {
    var body: some View {
        
        ZStack{
            VStack{
                
                Text("Be Centered")
                    .padding(.bottom,600)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color(.white))
                    
            }
            .background(Image("OceanImage").opacity(0.6))
            
            TimerViewOcean()
                .padding(.top, 50)
        }
    }
}
                
   

struct OceanView_Previews: PreviewProvider {
    static var previews: some View {
        OceanView()
    }
}
