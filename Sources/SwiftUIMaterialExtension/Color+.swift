//
//  File.swift
//  
//
//  Created by Ji-Hwan Kim on 12/7/23.
//

import SwiftUI

extension Color {
    public init(
        _ colorSpace: Color.RGBColorSpace = .sRGB,
        rgb: Int,
        opacity: Double = 1
    ) {
        self.init(
            colorSpace,
            red: .init((rgb & 0x00FF0000) >> 16) / 256,
            green: .init((rgb & 0x0000FF00) >> 8) / 256,
            blue: .init(rgb & 0x000000FF) / 256,
            opacity: opacity
        )
    }
}
