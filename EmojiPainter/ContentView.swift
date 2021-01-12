//
//  ContentView.swift
//  EmojiPainter
//
//  Created by Danielle Kefford on 1/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            // TODO: Add two hundred buttons which can be clicked!
            Button("", action: {
                print("I was clicked!!!")
            })
        }.frame(width: 250, height: 350).border(Color.black)
    }
}
