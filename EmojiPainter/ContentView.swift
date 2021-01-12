//
//  ContentView.swift
//  EmojiPainter
//
//  Created by Danielle Kefford on 1/10/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var currentColor: CurrentColor = CurrentColor(defaultColor: .white)

    var body: some View {
        VStack {
            ForEach(0..<13) { idx in
                HStack(alignment: .center) {
                    ForEach(0..<10) { idx in
                        EmojiPixelButton(currentColor: self.currentColor)
                    }
                }
            }
            HStack {
                Button("", action: {
                    self.currentColor.currentColor = .red
                }).background(Color.red)
                Button("", action: {
                    self.currentColor.currentColor = .orange
                }).background(Color.orange)
                Button("", action: {
                    self.currentColor.currentColor = .yellow
                }).background(Color.yellow)
                Button("", action: {
                    self.currentColor.currentColor = .green
                }).background(Color.green)
                Button("", action: {
                    self.currentColor.currentColor = .blue
                }).background(Color.blue)
                Button("", action: {
                    self.currentColor.currentColor = .purple
                }).background(Color.purple)
                Button("", action: {
                    self.currentColor.currentColor = Color.init(red: 0.5, green: 0.25, blue: 0.0, opacity: 1.0)
                }).background(Color.init(red: 0.5, green: 0.25, blue: 0.0, opacity: 1.0))
                Button("", action: {
                    self.currentColor.currentColor = .white
                }).background(Color.white)
                Button("", action: {
                    self.currentColor.currentColor = .black
                }).background(Color.black)
                Button("📋", action: {
                    let pasteboard = NSPasteboard.general
                    pasteboard.clearContents()
                    pasteboard.setString("🟥🟧🟨🟩🟦🟪🟫⬛️⬜️", forType: .string)
                })
            }
        }.frame(width: 260, height: 390)
    }
}
