//
//  File.swift
//  Candela
//
//  Created by saket bhushan on 24/12/25.
//

import SwiftUI

public protocol CandelaColorsProviding: Hashable {
    
    static var surfaceContainer: Color { get }
    static var surfaceDefault: Color { get }
    static var surfaceDisabled: Color { get }
    
    static var primaryContainer: Color { get }
    static var primaryDefault: Color { get }
    static var primaryDisabled: Color { get }
    
    static var secondaryContainer: Color { get }
    static var secondaryDefault: Color { get }
    static var secondaryDisabled: Color { get }
}

// TODO: Fill this
//public enum CandelaColors: CandelaColorsProviding {
//
//}
