//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Mark Chen on 2020/2/18.
//  Copyright © 2020 Mark Chen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    static let countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russian", "Spain", "UK", "US"]
    
    var correctAnswear = Int.random(in: 0...2)
    
    var body: some View {
        
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            
            VStack {
                VStack(spacing: 30) {
                    Text("Tap the flag of").foregroundColor(.white)
                    Text(ContentView.countries[correctAnswear]).foregroundColor(.white)
                    
                }
                Divider()
                FlagButtonList()
                Spacer()
            }
        }
        
        
    }
}

struct FlagButtonList: View {
    var body: some View {
        ForEach(0 ..< 3) { number in
            Button(action: {
                // button pressed
                print(number)
            }) {
                Image(ContentView.countries[number]).renderingMode(.original)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



