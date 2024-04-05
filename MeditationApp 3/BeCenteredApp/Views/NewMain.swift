//
//  NewMain.swift
//  BeCenteredApp
//
//  Created by Jennifer Simond on 10/2/23.
//

import SwiftUI
enum SheetType: Identifiable {
    case first, second, third
    
    var id: Int{
        hashValue
    }
}

struct NewMain: View {
    @State private var activeSheet: SheetType?
    
    @State private var currentText = 0
    let strings = ["Be Centered", "Peace is within...", "I am present...", "I am mindful..."]
    
    let timer = Timer.publish(every: 4, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        ZStack{
            
            Color("BackGround")
                .ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 24)
                .fill(Color("Rectangle"))
                .frame(width: 370, height: 500, alignment: .center)
            
                .opacity(0.3)
            
            VStack{
                
                Text(strings[currentText])
                    .onReceive(timer) { _ in
                        currentText = (currentText + 1) % strings.count
                        
                    }
                    .font(.system(size: 40, weight: .semibold, design: .serif))
                    .foregroundColor(.white)
                    .padding(.bottom, 640)
                    .opacity(0.8)
                
            }
            VStack{
                
                Button(action: {
                    self.activeSheet = .first
                }, label:{ForestButton()
                })
                .padding()
                Button(action: {
                    self.activeSheet = .second
                }, label:{OceanButton()
                })
               
                Button(action: {
                    self.activeSheet = .third
                }, label:{ZenButton()
                })
                .padding()
            }
        }
        .sheet(item: self.$activeSheet, onDismiss: {print("Sheet closed")}) {
            item in switch item {
            case .first:
                ForestView()
            case.second:
                OceanView()
            case.third:
                ZenView()
                
                
            }
        }
    }
}

struct NewMain_Previews: PreviewProvider {
    static var previews: some View {
        NewMain()
    }
}
