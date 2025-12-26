//
//  Theme.swift
//  Candela
//
//  Created by saket bhushan on 24/12/25.
//
import SwiftUI

public struct Theme: Sendable {
    
    public var colors: CandelaColors.Type
    public var dimensions: CandelaDimensions.Type
    
    public init(colors: CandelaColors.Type, dimensions: CandelaDimensions.Type) {
        self.colors = colors
        self.dimensions = dimensions
    }
}

public struct ThemeEnvironmentKey: EnvironmentKey {
    public static let defaultValue: Theme = .default
}

extension EnvironmentValues {
    public var theme: Theme {
        get { self[ThemeEnvironmentKey.self] }
        
        set { self[ThemeEnvironmentKey.self] = newValue }
    }
}

extension View {
    public func theme(_ theme: Theme) -> some View {
        environment(\.theme, theme)
    }
}

extension Theme {
    public static let `default` = commbank
    
    public static let commbank = Theme(colors: CandelaColors.self,
                                       dimensions: CandelaDimensions.self)
}
