//
//  ContentView.swift
//  EmojiPainter
//
//  Created by Danielle Kefford on 1/10/21.
//

import SwiftUI

// TODO:
//
// * Clear canvas
// * Set entire canvas with color
// * Need to make toolbar row
// * Need to be able select other "brushes"  like 💙 or 🔵
struct ContentView: View {
    private var paintColors: [Color] = [
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .purple,
        .brown,
        .white,
        .black
    ]

    @ObservedObject var currentColor: CurrentColor = CurrentColor(defaultColor: .white)
    @ObservedObject var pixels: EmojiPixels = EmojiPixels(pixels: Array(repeating: Array(repeating: "⬜️", count: 10), count: 13))

    var body: some View {
        VStack {
            ForEach(0..<13) { row in
                HStack(alignment: .center) {
                    ForEach(0..<10) { column in
                        EmojiPixelButton(
                            currentColor: self.currentColor, pixels: self.pixels,
                            row: row,
                            column: column)
                    }
                }
            }
            HStack() {
                ForEach(paintColors, id: \.self) { paintColor in
                    Button("", action: {
                        self.currentColor.currentColor = paintColor
                    })
                    .background(paintColor)
                }
            }
            HStack() {
                Button("📋", action: self.handlePasteboard)
                Button("🪣", action: self.handleBucket)
            }
        }.frame(width: 260, height: 420)
    }

    func handlePasteboard() -> Void {
        let pasteboard = NSPasteboard.general
        pasteboard.clearContents()
        pasteboard.setString(toString(pixels: self.pixels), forType: .string)
    }

    func handleBucket() -> Void {
    }

    func toString(pixels: EmojiPixels) -> String {
        return pixels.pixels.map { row in
            return row.joined()
        }.joined(separator: "\n")
    }
}
