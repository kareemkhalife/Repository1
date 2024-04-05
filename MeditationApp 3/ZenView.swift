//
//  ZenView.swift
//  BeCenteredApp
//
//  Created by Jennifer Simond on 10/2/23.
//

import SwiftUI

struct ZenView: View {
    var body: some View {
        
        ZStack{
            VStack{
                
                Text("Be Centered")
                    .padding(.bottom,600)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color(.white))
                    
            }
            .background(Image("ZenImage").opacity(0.6))
            .padding(.bottom,25)
            
            TimerViewZen()
                .padding(.top, 50)
                
        }
        }
       
            
        }
    


struct ZenView_Previews: PreviewProvider {
    static var previews: some View {
        ZenView()
    }
}
