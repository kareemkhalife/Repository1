//
//  MainView.swift
//  BeCenteredApp
//
//  Created by Jennifer Simond on 10/2/23.
//

import SwiftUI

struct MainView: View {
    
    @State private var currentText = 0
    let strings = ["Be Centered", "Peace is within...", "I am present...", "I am mindful..."]
    
    let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    func buttonPressed(){
        print("button press")
    }
    
    var body: some View {
       
        ZStack{


            Color("BackGround")
                .ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 24)
                .fill(Color("Rectangle"))
                .frame(width: 370, height: 500, alignment: .center)
                
                .opacity(0.3)
            
            VStack{
                
                
                
                HStack{
                    Button(action: {
                        buttonPressed()
                        
                    }) {
                        
                        
                        Image(systemName: "tree.fill")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                        
                        VStack{
                            Text("Forest Meditation")
                            //.font(.title)
                                .foregroundColor(.white)
                                .font(.system(size: 30, weight:  .bold, design: .rounded))
                                .frame(width: 250, height: 40, alignment: .center)
                            
                        }
                        
                        
                    }
                    
                    
                    
                    .padding(.trailing, 1)
                    .padding(.leading, 1)
                    .padding()
                    .background(Color("Forest Button"))
                   // .padding(.bottom, 2)
                    
                    .cornerRadius(24).shadow(color: .gray.opacity(0.7), radius: 2, y: 5)
                    
                }
                
                .padding(.bottom)
               
                Button(action: {
                    buttonPressed()
                    
                }) {
                HStack{
                    
                        Image(systemName: "water.waves")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                        
                        VStack{
                            Text("Ocean Meditation")
                            //.font(.title)
                                .foregroundColor(.white)
                                .font(.system(size: 30, weight:  .bold, design: .rounded))
                                .frame(width: 250, height: 40, alignment: .center)
                            
                        }
                        
                        
                    }
                    
                    .padding(.trailing, 4)
                    .padding(.leading, 4)
                    .padding()
                    .background(Color("ocean button"))
                    //.padding(.bottom, 2)
                    
                    .cornerRadius(24).shadow(color: .gray.opacity(0.7), radius: 2, y: 5)
                    
                }
                HStack{
                    Button(action: {
                        buttonPressed()
                        
                    }) {
                        
                        
                        Image(systemName: "figure.mind.and.body")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                        
                        VStack{
                            Text("Zen Meditation")
                                .frame(width: 250, height: 40, alignment: .center)
                                .foregroundColor(.white)
                                .font(.system(size: 30, weight:  .bold, design: .rounded))
                            
                        }
                        
                        
                    }
                    
                    .padding(.trailing, 3)
                    .padding(.leading, 4)
                    .padding()
                    .background(Color("zen button"))
                    // .padding(.bottom, 2)
                    
                    .cornerRadius(24).shadow(color: .gray.opacity(0.7), radius: 2, y: 5)
                 
                    .padding(.top)
                }
                
           
            }
            VStack{
                
              
                    
                    
                    Text(strings[currentText])
                        .onReceive(timer) { _ in
                            currentText = (currentText + 1) % strings.count
                            
                        }
                }
                    
                        .font(.system(size: 30, weight: .semibold, design: .serif))
                        .foregroundColor(.white)
                        .padding(.bottom, 640)
                    
                    
                        .padding()
                
                
               
                
                
                
            }
            
            
        }
    }

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
