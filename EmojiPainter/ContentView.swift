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
            Button("", action: {
                self.currentColor.currentColor = .purple
            })
        }.frame(width: 260, height: 390)
    }
}
