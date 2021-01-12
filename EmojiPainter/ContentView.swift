//
//  ContentView.swift
//  EmojiPainter
//
//  Created by Danielle Kefford on 1/10/21.
//

import SwiftUI

struct ContentView: View {
    @State var currentColor: Color = .black

    var body: some View {
        VStack {
            ForEach(0..<12) { idx in
                HStack(alignment: .center) {
                    ForEach(0..<10) { idx in
                        Button("", action: {
                            print("I was clicked")
                        })
                    }
                }
            }
            Button("", action: {
                self.currentColor = .purple
            })
        }.frame(width: 250, height: 350)
    }
}
