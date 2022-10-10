//
//  ContentView.swift
//  CustomModifiersDemo
//
//  Created by Davide Troise with Swift 5.0
//  for the YouTube channel "Coding con Davide" https://bit.ly/3QJziJE
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Artist gallery")
                .mainTitle()
            
            AsyncImage(url: URL(string: "https://picsum.photos/300"))
                .mainPhoto()
                .watermark(title: "MODIFIER!")
                .padding()
            
            Button {
                
            } label: {
                Text("Purchase me!")
                    .mainButton()
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
