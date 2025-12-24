//
//  SwiftUIView.swift
//  Candela
//
//  Created by saket bhushan on 23/12/25.
//

import SwiftUI

public struct CandelaButton: Identifiable, View {
    
    /// Button's UUID for ``Identifiable conformance``
    public var id: UUID = .init()
    
    public let title: String
    
    public let style: CandelaButtonStyle
    
    /// Closure to be invoked when the button is tapped
    /// IMPORTANT: Customer interactions with ``LumentButton`` should be synchronous.
    /// Any async requirements with ``action`` should be handled by the caller.
    public let action: () -> Void
    
    init(_ title: String,
         style: CandelaButtonStyle = .primary,
         action: @escaping () -> Void) {
        self.title = title
        self.style = style
        self.action = action
    }
    
    public var body: some View {
        Button(title) {
            action()
        }
    }
}

// TODO: Need a Result Builder for List of buttons!

#Preview {
//    CandelaButton()
}
