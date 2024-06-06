//
//  ContentView.swift
//  Test App
//
//  Created by Jason Cox on 6/4/24.
//

import SwiftUI

var ambuScore = 0

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Palliative Performance Scale")
            
            Menu("Ambulation") {
                Button("Full ambulation", action: fullAmbu)
                Button("Reduced ambulation", action: reduAmbu)
                Button("Very reduced ambulation", action: veryAmbu)
                Button("Bedbound", action: bedBound)
            }.fixedSize()
            
            Button(action: {
              // Handle sign-in action here
              print("Sign In button tapped!")
            }) {
              Text("Sign In")
                .foregroundColor(.white) // Set text color
                .font(.headline) // Set font size and style
            }
            
            Button(action: {
                print("Button tapped.")
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
            


        }
        .padding()
    }
    func fullAmbu() {
        print("Full ambulation")
        ambuScore = 1
        }
    func reduAmbu() {
        print("Reduced ambulation")
        ambuScore = 2
        }
    func veryAmbu() {
        print("Very reduced ambulation or partially bedbound")
        ambuScore = 3
        }
    func bedBound() {
        print("Bed bound")
        ambuScore = 4
    }
    
    func ppsCalc() {
        
    }
}

#Preview {
    ContentView()
}
