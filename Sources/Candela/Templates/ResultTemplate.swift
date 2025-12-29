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
    
    /// Result state. Used to create a state icon.
    public let state: ResultTemplateState
    
    /// Heading text
    public let heading: String
    
    /// A `view` to be rendered on Result Template
    /// This property is initialized ``ResultTemplate``'s initializer via the `ViewBuilder bodyContent` argument.
    public let bodyContent: BodyContent?
    
    /// A collections of buttons to be rendered on Result Template.
    /// This propety is initialized in ``ResultTemplate``'s initializer via the ``LumenButtonListBuilder``. `buttons` argument.
    public let buttons: [CandelaButton]?
    
    
    /// Initialize a Result Template.
    /// - Parameters:
    ///   - state: Result state. used to create a state icon.
    ///   - heading: heading text
    ///   - bodyContent: Aview Builder to create Result Template's body content view.
    ///   - buttons: A ``LumenButtonListBuilder`` to create a list of ``LumentButtons`` to be rendered in result Template.
    public init(
        state: ResultTemplateState = .critical,
        heading: String,
        @ViewBuilder bodyContent: @escaping () -> BodyContent? = { nil },
        buttons: @escaping () -> [CandelaButton]? = { nil }) {
        self.state = state
        self.heading = heading
        self.bodyContent = bodyContent()
        self.buttons = buttons()
    }
    
    /// Convenience init for text paragraph in the body!
    public init(
        state: ResultTemplateState = .critical,
        heading: String,
        paragraph: String,
        buttons: @escaping () -> [CandelaButton]? = { nil }) where BodyContent == TextParagraphContent {
        self.state = state
        self.heading = heading
        self.bodyContent = TextParagraphContent(paragraph: paragraph)
        self.buttons = buttons()
    }
    
    /// Convenience init for Bullet points in the body!
    public init(
        state: ResultTemplateState = .critical,
        heading: String,
        bulletPoints: [String],
        buttons: @escaping () -> [CandelaButton]? = { nil }) where BodyContent == BulletPointsList {
        self.state = state
        self.heading = heading
        self.bodyContent = BulletPointsList(bulletPoints)
        self.buttons = buttons()
    }
    
    /// Convenience init for Bullet points in the body!
    public init(
        state: ResultTemplateState = .critical,
        heading: String,
        bulletPoints: String...,
        buttons: @escaping () -> [CandelaButton]? = { nil }) where BodyContent == BulletPointsList {
        self.state = state
        self.heading = heading
        self.bodyContent = BulletPointsList(bulletPoints)
        self.buttons = buttons()
    }
    
    public var body: some View {
        // TODO: complete this!
        Text("")
    }
}

public enum ResultTemplateState: CaseIterable, Identifiable {
    
    case critical
    
    case success
    
    case warning
    
    case info
    
    public var id: Self { self }
    
    var icon: String {
        switch self {
        case .critical:
            "alarm.waves.left.and.right"
        case .success:
            "alarm.waves.left.and.right"
        case .warning:
            "alarm.waves.left.and.right"
        case .info:
            "alarm.waves.left.and.right"
        }
    }
}
