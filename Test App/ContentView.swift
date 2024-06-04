//
//  ContentView.swift
//  Test App
//
//  Created by Jason Cox on 6/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Here's a button")
            

            
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
            }).contextMenu(ContextMenu(menuItems: {
                /*@START_MENU_TOKEN@*/Text("Menu Item 1")/*@END_MENU_TOKEN@*/
                /*@START_MENU_TOKEN@*/Text("Menu Item 2")/*@END_MENU_TOKEN@*/
                /*@START_MENU_TOKEN@*/Text("Menu Item 3")/*@END_MENU_TOKEN@*/
            }))
            

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
