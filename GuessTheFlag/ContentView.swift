//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Mark Chen on 2020/2/18.
//  Copyright © 2020 Mark Chen. All rights reserved.
//

import SwiftUI

let colorList = [
    Color(red:0.51, green:0.93, blue:0.93),
    Color(red:0.00, green:0.81, blue:0.79),
    Color(red:0.98, green:0.69, blue:0.63),
    Color(red:0.88, green:0.44, blue:0.33)
]

struct ContentView: View {
    var body: some View {
        
        ZStack {
            //            VStack(spacing: 0) {
            //                ForEach(0 ..< colorList.count) {
            //                    LinearGradient(gradient: Gradient(colors: [colorList[$0], colorList[($0+1)/colorList.count]]), startPoint: .top, endPoint: .bottom)
            //
            //                }
            //            }.edgesIgnoringSafeArea(.all)
            //
            
            LinearGradient(gradient:
                Gradient(colors: [
                    Color(red:0.51, green:0.38, blue:0.76),
                    Color(red:0.18, green:0.75, blue:0.57)]),
                           startPoint: .top,
                           endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            Text("Hello World").bold()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



