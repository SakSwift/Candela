//
//  SwiftUIView.swift
//  Candela
//
//  Created by saket bhushan on 24/12/25.
//

import SwiftUI

struct ButtonPrimary: View {
    
    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled
    
    let configuration: ButtonStyleConfiguration
    
    init(_ configuration: ButtonStyleConfiguration) {
        self.configuration = configuration
    }
    
    var body: some View {
        configuration
            .label
// TODO:    .font(style: .body)
    }
}
