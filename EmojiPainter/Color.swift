//
//  Color.swift
//  EmojiPainter
//
//  Created by Danielle Kefford on 1/13/21.
//

import SwiftUI

extension Color {
    public static let brown: Color = Color.init(red: 0.5, green: 0.25, blue: 0.0, opacity: 1.0)

    static func toEmoji(color: Color) -> String {
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
        case .brown:
            return "🟫"
        case .black:
            return "⬛️"
        case .white:
            return "⬜️"
        default:
            return "❓"
        }
    }
}
