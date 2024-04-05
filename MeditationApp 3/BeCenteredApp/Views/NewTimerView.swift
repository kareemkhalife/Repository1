//
//  NewTimerView.swift
//  BeCenteredApp
//
//  Created by Jennifer Simond on 10/3/23.
//

import SwiftUI

struct NewTimerView: View {
    
    @State var counter: Int = 0
        var countTo: Int = 120
        
    let textArray = ["Relax","Clear your mind", "Inhale...", "Exhale...", "Inhale...", "Exhale...","Inhale...", "Exhale...","Inhale...", "Exhale...","Inhale...", "Exhale...","Inhale...", "Exhale...","Inhale...", "Exhale..."]
    
        @State private var currentIndex = 0
        
        @State private var timeRemaining = 60.0
        let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
        
        @State private var isRunning = false
        
        let textChangeTimer = Timer.publish(every: 7, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack{
            ZStack{
                
                Text("Affirmations")
                    .font(.system(size: 30))
                    .fontDesign(.serif)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("TimerBack"))
                    .opacity(0.9)
                    .padding()
                
                
            }
        }
    }
}

struct NewTimerView_Previews: PreviewProvider {
    static var previews: some View {
        NewTimerView()
    }
}
