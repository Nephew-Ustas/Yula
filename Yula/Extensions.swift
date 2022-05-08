//
//  Extensions.swift
//  Yula
//
//  Created by Daniel Pustotin on 08.05.2022.
//

import SwiftUI

extension Text {
    func buttonStyle() -> some View {
        self
            .font(.title)
            .foregroundColor(.accent)
            .padding()
            .background {
                Color.dark
            }
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
    }
    
    func titleStyle() -> some View {
        self
            .font(.title)
            .foregroundColor(.accent)
            .underline()
            .bold()
            .multilineTextAlignment(.leading)
            .padding()
    }
    
    func bodyStyle() -> some View {
        self
            .font(.title3)
            .foregroundColor(.highlight)
            .padding()
    }
}
