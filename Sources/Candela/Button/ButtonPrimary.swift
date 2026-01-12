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
            .font(style: .body)
            .font(.caption)
            .padding(.vertical, theme.dimensions.paddingButtonVertical)
            .padding(.horizontal, theme.dimensions.paddingTileHorizontal)
            .frame(minWidth: theme.dimensions.sizingButtonHorizontalMinimum,
                   minHeight: theme.dimensions.measurement500,
                   alignment: .center)
            .multilineTextAlignment(.center)
            .foregroundStyle(textColor(configuration))
            .background(backgroundColor(configuration))
            .clipShape(RoundedRectangle(cornerRadius: theme.dimensions.borderRadiusRegular))
    }
    
    private func textColor(_ configuration: ButtonStyleConfiguration) -> Color {
        switch (isEnabled, configuration.isPressed) {
        case (false, _): theme.colors.surfaceDefault
        default: theme.colors.primaryDefault
        }
    }
    
    private func backgroundColor(_ configuration: ButtonStyleConfiguration) -> Color {
        switch (isEnabled, configuration.isPressed) {
        case (false, _): theme.colors.surfaceStateLayerDisabled
        case (_, true): theme.colors.primaryPressed
        default: theme.colors.primaryDefault
        }
    }
}
