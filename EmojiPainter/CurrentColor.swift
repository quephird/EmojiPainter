//
//  CurrentColor.swift
//  EmojiPainter
//
//  Created by Danielle Kefford on 1/11/21.
//

import SwiftUI

class CurrentColor: ObservableObject {
    @Published var currentColor: Color
    public var defaultColor: Color

    init(defaultColor: Color) {
        self.defaultColor = defaultColor
        self.currentColor = defaultColor
    }
}
