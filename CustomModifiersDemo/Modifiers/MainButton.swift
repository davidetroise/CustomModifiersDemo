//
//  MainButton.swift
//  CustomModifiersDemo
//
//  Created by Davide Troise with Swift 5.0
//  for the YouTube channel "Coding con Davide" https://bit.ly/3QJziJE
//

import SwiftUI

struct MainButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 18, weight: .bold, design: .rounded))
            .padding()
            .background(.red, in: Capsule())
            .foregroundColor(.white)
    }
}

struct MainButton_Previews: PreviewProvider {
    static var previews: some View {
        Text("Press me, please!")
            .modifier(MainButton())
    }
}

extension View {
    public func mainButton() -> some View {
        self.modifier(MainButton())
    }
}
