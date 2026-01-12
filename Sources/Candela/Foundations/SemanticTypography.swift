//
//  File.swift
//  Candela
//
//  Created by saket bhushan on 08/01/26.
//

import Foundation
import SwiftUI

extension CGFloat {
    public static let fontSize2: CGFloat = CandelaDimensions.measurement150
    public static let fontSize4: CGFloat = CandelaDimensions.measurement250
    public static let fontSize6: CGFloat = CandelaDimensions.measurement250
    public static let fontSize8: CGFloat = CandelaDimensions.measurement400
}

public enum CandelaFontStyle: Identifiable, Sendable {
    case headingPrimary
    case headingSecondary
    case body
    case caption
    
    public var id: Self { self }
    
    var size: CGFloat {
        switch self {
        case .headingPrimary: .fontSize8
        case .headingSecondary: .fontSize6
        case .body: .fontSize4
        case .caption: .fontSize2
        }
    }
    
    var textStyle: Font.TextStyle {
        switch self {
        case .headingPrimary: .largeTitle
        case .headingSecondary: .title2
        case .body: .body
        case .caption: .caption
        }
    }
}

struct CandelaFontStyleModifier: ViewModifier {
    @Environment(\.fontProvider) private var fontProvider
    var style: CandelaFontStyle
    func body(content: Content) -> some View {
        content.font(fontProvider.font(style, UIAccessibility.isBoldTextEnabled))
    }
}

extension View {
    
    @ViewBuilder
    public func font(style: CandelaFontStyle) -> some View {
        modifier(CandelaFontStyleModifier(style: style))
            .padding(.bottom, 3)
    }
}
