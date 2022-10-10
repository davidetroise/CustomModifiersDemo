//
//  MainPhoto.swift
//  CustomModifiersDemo
//
//  Created by Davide Troise with Swift 5.0
//  for the YouTube channel "Coding con Davide" https://bit.ly/3QJziJE
//

import SwiftUI

struct MainPhoto: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(radius: 6)
    }
}

struct MainPhoto_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello, world!")
            .modifier(MainPhoto())
    }
}

extension View {
    public func mainPhoto() -> some View {
        self.modifier(MainPhoto())
    }
}
