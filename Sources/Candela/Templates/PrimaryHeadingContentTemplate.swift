//
//  File.swift
//  Candela
//
//  Created by saket bhushan on 02/01/26.
//

import SwiftUI

public struct PrimaryHeadingContentTemplate<BodyContent: View>: View {
    
    @Environment(\.theme.colors) private var colors
    @Environment(\.theme.dimensions) private var dimensions
    
    public let heading: String
    public let bodyContent: BodyContent?
    public let buttons: [CandelaButton]?
    
    public init(
         heading: String,
         @ViewBuilder bodyContent: @escaping () -> BodyContent? = { nil },
         buttons: @escaping () -> [CandelaButton]? = { nil }
    ) {
        self.heading = heading
        self.bodyContent = bodyContent()
        self.buttons = buttons()
    }
    
    public init(
         heading: String,
         paragraph: String,
         buttons: @escaping () -> [CandelaButton]? = { nil }
    ) where BodyContent == TextParagraphContent {
        self.heading = heading
        self.bodyContent = TextParagraphContent(paragraph: paragraph)
        self.buttons = buttons()
    }
    
    public init(
         heading: String,
         bulletPoints: [String],
         buttons: @escaping () -> [CandelaButton]? = { nil }
    ) where BodyContent == BulletPointsList {
        self.heading = heading
        self.bodyContent = BulletPointsList(bulletPoints)
        self.buttons = buttons()
    }
    
    public init(
         heading: String,
         bulletPoints: String...,
         buttons: @escaping () -> [CandelaButton]? = { nil }
    ) where BodyContent == BulletPointsList {
        self.heading = heading
        self.bodyContent = BulletPointsList(bulletPoints)
        self.buttons = buttons()
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: dimensions.measurement200) {
            Text(heading)
                .multilineTextAlignment(.leading)
            //font(style: .headingPrimary)
                .foregroundStyle(colors.surfaceDefault)
                .fixedSize(horizontal: false, vertical: true)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            if let bodyContent = self.bodyContent {
                bodyContent
            }
            
            if let buttons = self.buttons {
                ButtonList(buttons)
                    .padding(.top, dimensions.measurement200)
            }
        }
        .frame(maxWidth: .infinity,
               maxHeight: .infinity,
               alignment: .topLeading)
    }
    
}
