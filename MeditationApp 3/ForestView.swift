//
//  ForestView.swift
//  BeCenteredApp
//
//  Created by Jennifer Simond on 10/2/23.
//

import SwiftUI

struct ForestView: View {
    var body: some View {
        
        ZStack{
            
            VStack{
                
                Text("Be Centered")
                    .padding(.bottom,600)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color(.white))
                    
            }
            .background(Image("ForestImage3").opacity(0.6))
            .padding(.bottom,60)
            
            TimerView()
                .padding(.top, 50)
        }
       
    }
}

struct ForestView_Previews: PreviewProvider {
    static var previews: some View {
        ForestView()
    }
}
