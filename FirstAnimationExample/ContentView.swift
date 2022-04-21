//
//  ContentView.swift
//  FirstAnimationExample
//
//  Created by Nathan Smith on 2022-04-21.
//

import SwiftUI

struct ContentView: View {
    // MARK: Stored Properties
    @State var scaleFactor = 1.0
    
    // MARK: Computed Properties
    var body: some View {
        VStack (alignment: .center){
            Circle()
                .scaleEffect(scaleFactor)
                .animation(.easeInOut)
                .onTapGesture {
                    scaleFactor -= 0.05
                }
            Stepper("Change Size",
                    value: $scaleFactor,
                    in: 0.1...1.5,
                    step: 0.1)
            .padding()
            .padding(.horizontal, 42)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
