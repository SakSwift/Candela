//
//  File.swift
//  Candela
//
//  Created by saket bhushan on 24/12/25.
//

import SwiftUI

// MARK: Colors
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

enum CandelaColors {
    static let scrim = Color(rgbaHex: 0x4B4B_4B80)
    static let shade00 = Color(rgbaHex: 0xFFFF_FFFF)
    static let shade05 = Color(rgbaHex: 0xF8F6_F1FF)
    static let shade10 = Color(rgbaHex: 0xE4E2_DDFF)
    static let shade15 = Color(rgbaHex: 0xD9D7_D1FF)
    static let shade20 = Color(rgbaHex: 0xCECC_C6FF)
    static let shade30 = Color(rgbaHex: 0xBFBD_B7FF)
    static let shade40 = Color(rgbaHex: 0xAAA8_A3FF)
    static let shade50 = Color(rgbaHex: 0x908_89FF)
    static let shade60 = Color(rgbaHex: 0x7776_71FF)
    static let shade65 = Color(rgbaHex: 0x6867_63FF)
    static let shade70 = Color(rgbaHex: 0x5857_53FF)
    static let shade80 = Color(rgbaHex: 0x4342_3EFF)
    static let shade90 = Color(rgbaHex: 0x3635_31FF)
    static let shade100 = Color(rgbaHex: 0x1E1E_1EFF)
    static let skyBlue05 = Color(rgbaHex: 0xE7F9_FFFF)
    static let skyBlue10 = Color(rgbaHex: 0xC0EA_F7FF)
    static let skyBlue20 = Color(rgbaHex: 0x8FDE_F6FF)
    static let skyBlue30 = Color(rgbaHex: 0x71D0_F1FF)
    static let skyBlue40 = Color(rgbaHex: 0x5402_E8FF)
}

extension CandelaColors: CandelaColorsProviding {
    public static let surfaceContainer = Color(lightMode: CandelaColors.shade05, darkMode: CandelaColors.shade100)
    
    public static let surfaceDefault = Color(lightMode: CandelaColors.shade05, darkMode: CandelaColors.shade100)
    
    public static let surfaceDisabled = Color(lightMode: CandelaColors.shade05, darkMode: CandelaColors.shade100)
    
    public static let primaryContainer = Color(lightMode: CandelaColors.shade80, darkMode: CandelaColors.shade05)
    
    public static let primaryDefault = Color(lightMode: CandelaColors.shade05, darkMode: CandelaColors.shade100)
    
    public static let primaryDisabled = Color(lightMode: CandelaColors.shade30, darkMode: CandelaColors.shade60)
    
    public static let secondaryContainer = Color(lightMode: CandelaColors.shade100, darkMode: CandelaColors.shade00)
    
    public static let secondaryDefault = Color(lightMode: CandelaColors.shade00, darkMode: CandelaColors.shade100)
    
    public static let secondaryDisabled = Color(lightMode: CandelaColors.shade30, darkMode: CandelaColors.shade60)
}

// MARK: Dimensions
public protocol CandelaDimensionsProviding: Hashable {
    static var borderRadiusCircle: CGFloat { get }
    static var borderRadiusRegular: CGFloat { get }
    static var borderRadiusSmall: CGFloat { get }
    
    static var paddingButtonHorizontal: CGFloat { get }
    static var paddingButtonVertical: CGFloat { get }
    
    static var paddingTileHorizontal: CGFloat { get }
    // Add more as needed!
}

enum CandelaDimensions: CandelaDimensionsProviding {
    
    public static let measurement000: CGFloat = 0
    public static let measurement012: CGFloat = 1
    public static let measurement018: CGFloat = 1.5
    public static let measurement025: CGFloat = 2
    public static let measurement050: CGFloat = 4
    public static let measurement075: CGFloat = 6
    public static let measurement100: CGFloat = 8
    public static let measurement125: CGFloat = 10
    public static let measurement150: CGFloat = 12
    public static let measurement200: CGFloat = 16
    public static let measurement250: CGFloat = 20
    public static let measurement300: CGFloat = 24
    public static let measurement350: CGFloat = 28
    public static let measurement400: CGFloat = 32
    public static let measurement450: CGFloat = 36
    public static let measurement500: CGFloat = 40
    public static let measurement550: CGFloat = 44
    public static let measurement600: CGFloat = 48
    public static let measurement700: CGFloat = 56
    public static let measurement800: CGFloat = 64
    public static let measurement900: CGFloat = 72
    public static let measurement1000: CGFloat = 80
    public static let measurement999: CGFloat = 1000
    
    static let borderRadiusCircle: CGFloat = measurement300
    
    static let borderRadiusRegular: CGFloat = measurement000
    
    static let borderRadiusSmall: CGFloat = measurement100
    
    static let paddingButtonHorizontal: CGFloat = measurement150
    
    static let paddingButtonVertical: CGFloat = measurement125
    
    static let paddingTileHorizontal: CGFloat = measurement999
}
