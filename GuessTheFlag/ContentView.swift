//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Mark Chen on 2020/2/18.
//  Copyright © 2020 Mark Chen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    
    @State private var scoreTitle = ""
    @State private var correctAnswear = Int.random(in: 0...2)
    
    @State private var showingScore = false
    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            VStack {
                VStack(spacing: 30) {
                    Text("Tap the flag ...").foregroundColor(.white)
                    Text(countries[correctAnswear])
                        .foregroundColor(.white)
                        .font(.largeTitle).fontWeight(.bold)
                }
                
                Divider()
                
                ShowFlag(countries: countries) {
                    number in
                    self.flagTapped(number)
                }
                
                Spacer()
            }.alert(isPresented: $showingScore) {
                Alert(title: Text("Score"), message: Text(scoreTitle), dismissButton: .default(Text("Continue")) {
                    self.askNewQuestion()
                    })
            }
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswear {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        showingScore = true
    }
    
    func askNewQuestion() {
        countries = countries.shuffled()
        correctAnswear = Int.random(in: 0...2)
    }
}

struct ShowFlag: View {
    var countries: [String]
    var action: (Int)->()
    
    var body: some View {
        VStack(spacing: 20){
            ForEach(0 ..< 3) { number in
                Button(action: {
                    self.action(number)
                }) {
                    Image(self.countries[number])
                        .renderingMode(.original)
                        .clipShape(Capsule())
                        .overlay(Capsule().stroke(Color.black, lineWidth: 1))
                        .shadow(color: .black, radius: 2, x: 1, y: 1)
                }
            }
        }

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



