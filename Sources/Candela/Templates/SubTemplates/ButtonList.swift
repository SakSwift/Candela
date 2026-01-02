//
//  ButtonList.swift
//  Candela
//
//  Created by saket bhushan on 02/01/26.
//

import SwiftUI

struct ButtonList: View {
    
    @Environment(\.theme.dimensions) private var dimensions
    
    private let buttons: [CandelaButton]
    
    init(_ buttons: [CandelaButton]) {
        self.buttons = buttons
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: dimensions.measurement200) {
            ForEach(buttons) { button in
                button
            }
        }
    }
}
