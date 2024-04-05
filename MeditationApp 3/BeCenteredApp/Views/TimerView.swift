//
//  TimerView.swift
//  BeCenteredApp
//
//  Created by Jennifer Simond on 10/2/23.
//

import SwiftUI
import AVFoundation

struct TimerView: View {
   
    @State var counter: Int = 0
    var countTo: Int = 120
    
    let textArray = ["Relax","Clear your mind","Inhale...","Exhale...","Inhale...","Exhale...","Inhale...","Exhale...","Inhale...","Exhale...","Inhale...","Exhale...","Inhale...","Exhale...","Inhale...","Exhale...","Inhale...","Exhale...","Inhale...","Exhale..."]
    
    @State private var currentIndex = 0
    
    @State private var timeRemaining = 60.0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State private var isRunning = false
    
    let textChangeTimer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    
    @State var audioPlayer: AVAudioPlayer!
    @State var count = 1
    
    
    
    func playSound() {
        

        let url = Bundle.main.url(forResource: "song\(self.count)", withExtension: "mp3")

        guard url != nil else {
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }  catch {
            
        }
        
       // Bundle.main.path(forResource: "song\(self.count)", ofType: "mp3")
        
        
        
    }
    
    func stopSound() {
        audioPlayer.pause()
    }
 
    
    var body: some View {
        
        VStack{
            
            ZStack{
                
                Text(textArray[currentIndex])
                    .font(.system(size: 30))
                    .fontDesign(.serif)
//                    .foregroundColor(Color("TimerBack"))
                    .foregroundColor(.white)
                    .bold()
                    .opacity(0.9)
                    .padding()
                
                Circle()
                    .stroke(Color("TimerBack"), style: StrokeStyle(lineWidth: 25, lineCap: .round, lineJoin: .round))
                    .frame(width: 290, height: 290)
                    .opacity(0.6)
                
                Circle()
                    .trim(from: 0, to: progress())
                    .stroke(Color("TimerFront"), style: StrokeStyle(lineWidth: 25, lineCap: .round, lineJoin: .round))
                    .frame(width: 310, height: 310)
                    .opacity(0.8)
                
                
                VStack {
                    
                    
                    HStack {
                        Button(action: {
                            startTimer()
                            playSound()
                        }) {
                            Text("Start")
                                .font(.title)
                                .padding()
                                .background(Color("ZenButton"))
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                        }
                        .disabled(isRunning)

                        Button(action: {
                            stopTimer()
                            stopSound()
                            
                        }) {
                            Text("Stop")
                                .font(.title)
                                .padding()
                                .background(Color("ForestButton"))
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                        }
                        .disabled(!isRunning)
                        
                    
                    }

                    .padding(.top, 660)
                    // .padding()
                    
                    Button(action: {
                        resetTimer()
                        stopSound()
                    }) {
                        Text("Reset")
                            .font(.title)
                            .padding()
                            .background(Color("OceanButton"))
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                    }
                }
                
                Clock(counter: counter, countTo: countTo)
            }
        }
        .padding(.top, 20)
        .padding(.bottom, 250)
        .onReceive(timer) { _ in
            if isRunning {
                if counter < countTo {
                    counter += 1
                } else {
                    stopTimer()
                    currentIndex = (currentIndex + 1) %
                    textArray.count
                                    
                }
            }
            
        }
        
        .onReceive(textChangeTimer) { _ in
            if isRunning {
                currentIndex = (currentIndex + 1) %
                textArray.count
            }
        }
    }
    
    func progress() -> CGFloat {
        return (CGFloat(counter) / CGFloat(countTo))
    }
    
    func startTimer() {
        isRunning = true
    }
    func stopTimer() {
        isRunning = false
    }
    func resetTimer() {
        counter = 0
        stopTimer()
    }
    func resetTimerButton() {
        counter = 0
        stopTimer()
    }
    
    struct Clock: View {
        var counter: Int
        var countTo: Int
        
        var body: some View {
            
            VStack{
                Text(counterToMinutes())
                    .font(.system(size:60))
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.bottom, 250)
                    .foregroundColor(Color("TimerBack"))
            }
                    .padding(.top, 650)
            }
            func counterToMinutes() -> String {
                let currentTime = countTo - counter
                let seconds = currentTime % 60
                let minutes = Int(currentTime / 60)
                return "\(minutes):\(seconds < 10 ? "0" : "")\(seconds)"
              
            
            }
        }
    }


struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
