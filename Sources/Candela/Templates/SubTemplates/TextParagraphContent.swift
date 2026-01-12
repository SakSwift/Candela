//
//  TextParagraphContent.swift
//  Candela
//
//  Created by saket bhushan on 29/12/25.
//

import SwiftUI

public struct TextParagraphContent: View {
    
    @Environment(\.theme.colors) private var colors
    @Environment(\.theme.dimensions) private var dimensions
    let paragraph: String
    
    public init(paragraph: String) {
        self.paragraph = paragraph
    }
    
    public var body: some View {
        Text(paragraph)
            .font(style: .body)
            .foregroundStyle(colors.surfaceDefault)
            .fixedSize(horizontal: false, vertical: true)
            .frame(maxWidth: .infinity, alignment: .leading)
            .multilineTextAlignment(.leading)
    }
}
