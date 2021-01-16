//
//  EmojiPixelButton.swift
//  EmojiPainter
//
//  Created by Danielle Kefford on 1/11/21.
//

import SwiftUI

struct EmojiPixelButton: View {
    @State var currentColor: CurrentColor
    @State var pixels: EmojiPixels
    @State var row: Int
    @State var column: Int
    @State private var selected = false

    var body: some View {
        Button("", action: {
            self.selected.toggle()
            self.pixels.pixels[row][column] = Color.toEmoji(color: selected ? self.currentColor.currentColor : self.currentColor.defaultColor)
        })
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(selected ? self.currentColor.currentColor : self.currentColor.defaultColor)
    }
}
