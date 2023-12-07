//
//  MaterialView.swift
//
//
//  Created by Ji-Hwan Kim on 12/7/23.
//

import SwiftUI

public protocol MaterialView: View {
    var colorScheme: ColorScheme { get }
    var colors: Color.Material { get }
}

extension MaterialView {
    public var currentColorScheme: MaterialColorScheme {
        colors.current(colorScheme: colorScheme)
    }
}
