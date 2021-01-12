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
            self.pixels.pixels[row][column] = toEmoji(color: selected ? self.currentColor.currentColor : self.currentColor.defaultColor)
        })
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(selected ? self.currentColor.currentColor : self.currentColor.defaultColor)
    }
    
    func toEmoji(color: Color) -> String {
        switch color {
        case .red:
            return "🟥"
        case .orange:
            return "🟧"
        case .yellow:
            return "🟨"
        case .green:
            return "🟩"
        case .blue:
            return "🟦"
        case .purple:
            return "🟪"
        case Color.init(red: 0.5, green: 0.25, blue: 0.0, opacity: 1.0):
            return "🟫"
        case .black:
            return "⬛️"
        default:
            return "⬜️"
        }
    }
}
