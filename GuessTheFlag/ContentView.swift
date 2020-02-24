//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Mark Chen on 2020/2/18.
//  Copyright © 2020 Mark Chen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        ZStack {
            VStack(spacing: 0) {
                Color(red:0.51, green:0.93, blue:0.93)
                Color(red:0.00, green:0.81, blue:0.79)
                Color(red:0.98, green:0.69, blue:0.63)
                Color(red:0.88, green:0.44, blue:0.33)
            }.edgesIgnoringSafeArea(.all)
            
            Text("Hello World").bold()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



