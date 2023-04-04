//
//  ContentView.swift
//  FancyGrid
//
//  Created by Madalin Zaharia on 05.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Drawing
    var body: some View {
        VStack {
            Text("Smoothie")
                .font(.largeTitle)
            
            SmoothieView(smoothie: Smoothie.all()[6])
            // SmoothieView(smoothie: Smoothie.all()[0])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
