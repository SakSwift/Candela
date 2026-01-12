//
//  File.swift
//  Candela
//
//  Created by saket bhushan on 08/01/26.
//

import SwiftUI

struct FontProvidingKey: EnvironmentKey {
    static let defaultValue: FontProviding<CandelaFontStyle> = .beacon
}

extension EnvironmentValues {
    public var fontProvider: FontProviding<CandelaFontStyle> {
        get { self[FontProvidingKey.self] }
        set { self[FontProvidingKey.self] = newValue }
    }
}

extension View {
    public func fontProvider(_ fontProvider: FontProviding<CandelaFontStyle>) -> some View {
        environment(\.fontProvider, fontProvider)
    }
}


public struct FontProviding<A>: Sendable {
    let font: @Sendable (A, Bool) -> Font
    
    init(
        registration: () -> Void,
        font: @Sendable @escaping (A, Bool) -> Font
    ) {
        registration()
        self.font = font
    }
}

extension FontProviding where A == CandelaFontStyle {
    
    public static var beacon: Self {
        .init {} font: { style, isBoldTextEnabled in
            switch style {
            case .headingPrimary:
                if isBoldTextEnabled {
                    return .body // TODO: Add a custom font! fix this return
                } else {
                    return .body // TODO: fix this return
                }
            default:
                if isBoldTextEnabled {
                    return .body // TODO: fix this return
                } else {
                    return .body // TODO: fix this return
                }
            }
        }
    }
}
