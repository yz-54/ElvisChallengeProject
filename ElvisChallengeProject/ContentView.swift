//
//  ContentView.swift
//  ElvisChallengeProject
//
//  Created by Yehua Zhang on 4/28/25.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var img = ""
    @State private var text = ""
    
    var body: some View {
        VStack {

            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.purple)

            Spacer()

            Image(systemName: img)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            Text(text)
                .font(.title3)
                .fontWeight(.heavy)
                .foregroundStyle(.purple)
            Spacer()
            
            HStack {
                Button("Peace"){
                    img = "peacesign"
                    text = "Peace"
                }
                Button("Love"){
                    img = "suit.heart"
                    text = "Love"
                }
                Button("Understanding"){
                    img = "lightbulb"
                    text = "Understanding"
                }
            }.buttonStyle(.borderedProminent)
                .tint(.purple)
                .font(.title2)
                .bold()

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
