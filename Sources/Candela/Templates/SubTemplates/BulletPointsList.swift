//
//  BulletPointsList.swift
//  Candela
//
//  Created by saket bhushan on 29/12/25.
//

import SwiftUI

public struct BulletPointsList: View {
    
    @Environment(\.theme.colors) private var color
    @Environment(\.theme.dimensions) private var dimensions
    public let bulletItems: [String]
    
    public init(_ bulletItems: String...) {
        self.bulletItems = bulletItems
    }
    
    public init(_ bulletItems: [String]) {
        self.bulletItems = bulletItems
    }
    
    public var body: some View {
        if !bulletItems.isEmpty {
            VStack(alignment: .leading, spacing: dimensions.measurement050) {
                ForEach(bulletItems, id: \.self) { item in
                    BulletPointText(item)
                }
            }
        }
    }
}

public struct BulletPointText: View {
    
    @Environment(\.theme.colors) private var color
    public let text: String
    private let bulletCharacter = "\u{2022}"
    
    init(_ text: String) {
        self.text = text
    }
    
    public var body: some View {
        HStack(alignment: .top) {
            Text(bulletCharacter)
                .accessibilityHidden(true)
            //TODO: .font(style: body)
                .foregroundStyle(color.surfaceDefault)
            
            Text(text)
                .fixedSize(horizontal: false, vertical: true)
//                .font(style; .body)
                .foregroundStyle(color.surfaceDefault)
        }
    }
}
