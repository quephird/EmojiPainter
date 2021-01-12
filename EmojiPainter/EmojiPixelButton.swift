//
//  EmojiPixelButton.swift
//  EmojiPainter
//
//  Created by Danielle Kefford on 1/11/21.
//

import SwiftUI

struct EmojiPixelButton: View {
    @State var currentColor: CurrentColor
    @State private var selected = false

    var body: some View {
        Button("") {
            self.selected.toggle()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(selected ? self.currentColor.currentColor : self.currentColor.defaultColor)
    }
}
