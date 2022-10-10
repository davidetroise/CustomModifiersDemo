//
//  MainTitle.swift
//  CustomModifiersDemo
//
//  Created by Davide Troise with Swift 5.0
//  for the YouTube channel "Coding con Davide" https://bit.ly/3QJziJE
//

import SwiftUI

struct MainTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 28, weight: .heavy, design: .rounded))
    }
}

struct MainTitle_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello, world!")
            .modifier(MainTitle())
    }
}

extension View {
    public func mainTitle() -> some View {
        self.modifier(MainTitle())
    }
}
