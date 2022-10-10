//
//  Watermark.swift
//  CustomModifiersDemo
//
//  Created by Davide Troise with Swift 5.0
//  for the YouTube channel "Coding con Davide" https://bit.ly/3QJziJE
//

import SwiftUI

struct Watermark: ViewModifier {
    let text: String
    
    func body(content: Content) -> some View {
        ZStack {
            content
            Text(text)
                .font(.system(size: 30, weight: .heavy, design: .rounded))
                .foregroundColor(.white)
                .opacity(0.4)
                .shadow(radius: 6)
                .rotationEffect(Angle(degrees: -30))
        }
        
    }
}

struct Watermark_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello, world!")
            .modifier(Watermark(text: "COPYRIGHT 2022"))
    }
}

extension View {
    public func watermark(title: String) -> some View {
        self.modifier(Watermark(text: title))
    }
}
