//
//  ResultTemplate.swift
//  Candela
//
//  Created by saket bhushan on 29/12/25.
//
import SwiftUI

@MainActor
public struct ResultTemplate<BodyContent: View>: View {
    
    @Environment(\.theme.colors) private var color
    @Environment(\.theme.dimensions) private var dimensions
    
    public var body: some View {
        Text("")
    }
}

public enum ResultTemplateState: CaseIterable, Identifiable {
    
    case critical
    
    case success
    
    case warning
    
    case info
    
    public var id: Self { self }
    
// TODO:    var iconImage: Image
    
}
