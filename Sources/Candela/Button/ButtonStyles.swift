//
//  ButtonPrimaryStyle.swift
//  Candela
//
//  Created by saket bhushan on 28/12/25.
//

import SwiftUI

public struct ButtonPrimaryStyle: ButtonStyle {
    
    public init() {}
    
    public func makeBody(configuration: Configuration) -> some View {
        ButtonPrimary(configuration)
    }
}

extension ButtonStyle where Self == ButtonPrimaryStyle {
    public static var primary: Self {
        .init()
    }
}

///Mark : Add more button styles here! ( secondary etc. )

#Preview {
    Button("Dummy click") {}
        .buttonStyle(.primary)
}
