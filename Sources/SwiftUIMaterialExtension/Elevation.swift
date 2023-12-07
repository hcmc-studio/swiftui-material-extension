//
//  Elevation.swift
//  
//
//  Created by Ji-Hwan Kim on 12/7/23.
//

import SwiftUI

public struct Elevation {
    public typealias StyleElements = (Elevation.StyleElement, Elevation.StyleElement)
    
    public enum Styles: MaterialElevationStyle {
        case light1
        case light2
        case light3
        case light4
        case light5
        case dark1
        case dark2
        case dark3
        case dark4
        case dark5
        case current1(colorScheme: ColorScheme)
        case current2(colorScheme: ColorScheme)
        case current3(colorScheme: ColorScheme)
        case current4(colorScheme: ColorScheme)
        case current5(colorScheme: ColorScheme)
        
        public var elements: Elevation.StyleElements {
            switch self {
            case .light1: (.init(radius: 1.5, y: 1), .init(radius: 1, y: 1))
            case .light2: (.init(radius: 3, y: 2), .init(radius: 1, y: 1))
            case .light3: (.init(radius: 4, y: 4), .init(radius: 1.5, y: 1))
            case .light4: (.init(radius: 5, y: 6), .init(radius: 1.5, y: 2))
            case .light5: (.init(radius: 6, y: 8), .init(radius: 2, y: 4))
            case .dark1: (.init(radius: 1.5, y: 1), .init(radius: 1, y: 1))
            case .dark2: (.init(radius: 3, y: 2), .init(radius: 1, y: 1))
            case .dark3: (.init(radius: 4, y: 4), .init(radius: 1.5, y: 1))
            case .dark4: (.init(radius: 5, y: 6), .init(radius: 1.5, y: 2))
            case .dark5: (.init(radius: 6, y: 8), .init(radius: 2, y: 4))
            case .current1(colorScheme: let colorScheme): colorScheme == .light ? Elevation.Styles.light1.elements : Elevation.Styles.dark1.elements
            case .current2(colorScheme: let colorScheme): colorScheme == .light ? Elevation.Styles.light2.elements : Elevation.Styles.dark2.elements
            case .current3(colorScheme: let colorScheme): colorScheme == .light ? Elevation.Styles.light3.elements : Elevation.Styles.dark3.elements
            case .current4(colorScheme: let colorScheme): colorScheme == .light ? Elevation.Styles.light4.elements : Elevation.Styles.dark4.elements
            case .current5(colorScheme: let colorScheme): colorScheme == .light ? Elevation.Styles.light5.elements : Elevation.Styles.dark5.elements
            }
        }
    }
    
    public struct StyleElement {
        public let radius: CGFloat
        public let y: CGFloat
        
        public init(radius: CGFloat, y: CGFloat) {
            self.radius = radius
            self.y = y
        }
    }
}

@available(iOS 13.0, *)
extension View {
    public func elevation(style: Elevation.Styles) -> some View {
        self.shadow(color: .black.opacity(0.15), radius: style.elements.0.radius, x: 0.0, y: style.elements.0.y)
            .shadow(color: .black.opacity(0.3), radius: style.elements.1.radius, x: 0.0, y: style.elements.1.y)
    }
    
    public func elevation(style: Elevation.Styles, predicate: () -> Bool) -> some View {
        if predicate() {
            return AnyView(elevation(style: style))
        } else {
            return AnyView(self)
        }
    }
}

public protocol MaterialElevationStyle {
    var elements: Elevation.StyleElements { get }
}
