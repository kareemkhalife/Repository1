//
//  ContentView.swift
//  BeCenteredApp
//
//  Created by Jennifer Simond on 10/2/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingFirst = false
    @State private var showingSecond = false
    @State private var showingThird = false
    var body: some View {
        VStack {
            NewMain()
            
        }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
