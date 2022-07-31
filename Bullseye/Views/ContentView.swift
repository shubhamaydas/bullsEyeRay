//
//  ContentView.swift
//  Bullseye
//
//  Created by Shubhamay Das on 30.07.22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    
    var body: some View {
        
        VStack {
            VStack {
                VStack {
                    Text("🎯🎯🎯\nPUT THE BULLS EYE AS CLOSE AS YOU CAN TO")
                        .bold()
                        .kerning(2.0)
                        .multilineTextAlignment(.center)
                        .lineSpacing(4.0)
                        .font(.footnote)
                        
                    Text(String(game.target))
                        .kerning(-1.0)
                        .font(.largeTitle)
                        .fontWeight(.black)
                    HStack {
                        Text("1")
                            .fontWeight(.bold)
                        Slider(value: $sliderValue, in: 1.0...100.0)
                        Text("100")
                            .fontWeight(.bold)
                    }
                    
                }
                Button(action: {
                    alertIsVisible = true
                }) {
                    Text("Hit me")
                }.alert(isPresented: $alertIsVisible, content: {
                    let roundedValue:Int = Int(self.sliderValue.rounded())
                    return Alert(title: Text("Hello There"), message: Text("Slider Value: \(self.sliderValue) and rounded value is \(roundedValue) you scored \(game.points(sliderValue: roundedValue)) points this round"), dismissButton: .default(Text("Awesome")))
                })
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
