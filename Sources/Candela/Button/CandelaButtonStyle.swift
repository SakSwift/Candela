//
//  SwiftUIView.swift
//  Candela
//
//  Created by saket bhushan on 24/12/25.
//

import SwiftUI

public enum CandelaButtonStyle: Equatable, ButtonStyle {
    case primary
    case secondary
    
    public func makeBody(configuration: Configuration) -> some View {
        switch self {
        case .primary:
            EmptyView()
            
        case .secondary:
            EmptyView()
        }
    }
}
