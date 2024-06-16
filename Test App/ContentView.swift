//
//  ContentView.swift
//  Test App
//
//  Created by Jason Cox on 6/4/24.
//

import SwiftUI



struct ContentView: View {
    @State private var ambulationScore: Int = 1
    @State private var activityScore: Int = 1
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Palliative Performance Scale")
            
            Menu("Ambulation") {
                            Button(action: { ambuScore(score: 1) }) {
                                Text("Full ambulation")
                            }
                            Button(action: { ambuScore(score: 2) }) {
                                Text("Reduced ambulation")
                            }
                            Button(action: { ambuScore(score: 3) }) {
                                Text("Very reduced ambulation")
                            }
                            Button(action: { ambuScore(score: 4) }) {
                                Text("Bedbound")
                            }
                        }
                        .fixedSize()
            Menu("Activity Level") {
                            Button(action: { activityLevel(score: 1) }) {
                                Text("Normal, No disease")
                            }
                            Button(action: { activityLevel(score: 2) }) {
                                Text("Limited, Some disease")
                            }
                            Button(action: { activityLevel(score: 3) }) {
                                Text("Can't work, Significant disease")
                            }
                            Button(action: { activityLevel(score: 4) }) {
                                Text("Can't do hobbies, Severe disease")
                            }
                            Button(action: {activityLevel(score: 5)}) {
                                Text("Bedbound")
                            }
                        }
                        .fixedSize()

            Button(action: {
              // Handle sign-in action here
              print("Sign In button tapped!")
            }) {
              Text("Sign In")
                .foregroundColor(.white) // Set text color
                .font(.headline) // Set font size and style
            }
            
            Button(action: {
                print("Tapped")
            }, label: {
                Text("Calculate Score")
            })
            
        }
        .padding()
    }
    func ambuScore(score: Int) {
        print("Full ambulation")
        ambulationScore = score
        }
    func activityLevel(score: Int) {
        print("Reduced ambulation")
        activityScore = score
        }

    
    func ppsCalc() {
        
    }
}

#Preview {
    ContentView()
}
