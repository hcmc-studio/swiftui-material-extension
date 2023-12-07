//
//  File.swift
//  
//
//  Created by Ji-Hwan Kim on 12/7/23.
//

import SwiftUI

public struct Typography {
    public enum Styles: MaterialTypographyStyle {
        /// size: 57, line height: 64, letter spacing: -0.25
        case DisplayLarge
        /// size: 45, line height: 52, letter spacing: 0
        case DisplayMedium
        /// size: 36, line height: 44, letter spacing: 0
        case DisplaySmall
        /// size: 32, line height: 40, letter spacing: 0
        case HeadlineLarge
        /// size: 28, line height: 36, letter spacing: 0
        case HeadlineMedium
        /// size: 24, line height: 32, letter spacing: 0
        case HeadlineSmall
        /// size: 22, line height: 28, letter spacing: 0
        case TitleLarge
        /// size: 16, line height: 24, letter spacing: +0.15, medium
        case TitleMedium
        /// size: 14, line height: 20, letter spacing: +0.1, medium
        case TitleSmall
        /// size: 14, line height: 20, letter spacing: +0.1, medium
        case LabelLarge
        /// size: 12, line height: 16, letter spacing: +0.5, medium
        case LabelMedium
        /// size: 11, line height: 16, letter spacing: +0.5, medium
        case LabelSmall
        /// size: 16, line height: 24, letter spacing: +0.5
        case BodyLarge
        /// size: 14, line height: 20, letter spacing: +0.25
        case BodyMedium
        /// size: 12, line height: 16, letter spacing: +0.4
        case BodySmall
        
        public var value: Typography.Style {
            switch self {
            case .DisplayLarge: .init(size: 57, lineHeight: 64, letterSpacing: -0.25, weight: .regular)
            case .DisplayMedium: .init(size: 45, lineHeight: 52, letterSpacing: 0, weight: .regular)
            case .DisplaySmall: .init(size: 36, lineHeight: 44, letterSpacing: 0, weight: .regular)
            case .HeadlineLarge: .init(size: 32, lineHeight: 40, letterSpacing: 0, weight: .regular)
            case .HeadlineMedium: .init(size: 28, lineHeight: 36, letterSpacing: 0, weight: .regular)
            case .HeadlineSmall: .init(size: 24, lineHeight: 32, letterSpacing: 0, weight: .regular)
            case .TitleLarge: .init(size: 22, lineHeight: 28, letterSpacing: 0, weight: .regular)
            case .TitleMedium: .init(size: 16, lineHeight: 24, letterSpacing: 0.15, weight: .medium)
            case .TitleSmall: .init(size: 14, lineHeight: 20, letterSpacing: 0.1, weight: .medium)
            case .LabelLarge: .init(size: 14, lineHeight: 20, letterSpacing: 0.1, weight: .medium)
            case .LabelMedium: .init(size: 12, lineHeight: 16, letterSpacing: 0.5, weight: .medium)
            case .LabelSmall: .init(size: 11, lineHeight: 16, letterSpacing: 0.5, weight: .medium)
            case .BodyLarge: .init(size: 16, lineHeight: 24, letterSpacing: 0.5, weight: .regular)
            case .BodyMedium: .init(size: 14, lineHeight: 20, letterSpacing: 0.25, weight: .regular)
            case .BodySmall: .init(size: 12, lineHeight: 16, letterSpacing: 0.4, weight: .regular)
            }
        }
    }
    
    public struct Style {
        let size: CGFloat
        let lineHeight: CGFloat
        let letterSpacing: CGFloat
        let weight: Font.Weight
    }
}

public protocol MaterialTypographyStyle {
    var value: Typography.Style { get }
}

extension Font {
    public static func materialSystem(style: Typography.Styles) -> Font {
        .system(size: style.value.size, weight: style.value.weight)
    }
    
    @available(iOS 14.0, *)
    public static func materialCustom(_ name: String, style: Typography.Styles) -> Font {
        .custom(name, size: style.value.size).weight(style.value.weight)
    }
}

extension Text {
    public func kerning(style: Typography.Styles) -> Text {
        return kerning(style.value.letterSpacing)
    }
    
    public func tracking(style: Typography.Styles) -> Text {
        return tracking(style.value.letterSpacing)
    }
}

extension View {
    public func lineSpacing(style: Typography.Styles) -> some View {
        return lineSpacing(style.value.lineHeight - style.value.size)
    }
}
