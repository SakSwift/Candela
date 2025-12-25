//
//  File.swift
//  Candela
//
//  Created by saket bhushan on 24/12/25.
//

import UIKit
import SwiftUI

extension Color {
    public init(
        lightMode: Color,
        darkMode: Color
    ) {
        self.init(uiColor: UIColor(lightMode: UIColor(lightMode), darkMode: UIColor(darkMode)))
    }
}

extension Color {
    public init(rgbaHex: Int) {
        self.init(red: CGFloat((rgbaHex >> 24) & 0xFF) / 255.0,
                  green: CGFloat((rgbaHex >> 16) & 0xFF) / 255.0,
                  blue: CGFloat((rgbaHex >> 8) & 0xFF) / 255.0,
                  opacity: CGFloat(rgbaHex & 0xFF) / 255.0)
    }
}

extension UIColor {
    convenience init(lightMode lightColor: UIColor, darkMode darkColor: UIColor) {
        self.init { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return darkColor
            case .light,
                .unspecified:
                return lightColor
            @unknown default:
                return lightColor
            }
        }
    }
}
