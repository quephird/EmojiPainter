//
//  EmojiPixels.swift
//  EmojiPainter
//
//  Created by Danielle Kefford on 1/11/21.
//

import SwiftUI

class EmojiPixels: ObservableObject {
    @Published var pixels: [[String]]

    init(pixels: [[String]]) {
        self.pixels = pixels
    }
}
