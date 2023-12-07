//
//  Color.swift
//
//
//  Created by Ji-Hwan Kim on 12/7/23.
//

import SwiftUI

private let designKitDefaultPrimary = {
    var palette = [Color](repeating: .clear, count: 101)
    palette[0] = .init(rgb: 0x000000)
    palette[10] = .init(rgb: 0x21005D)
    palette[20] = .init(rgb: 0x381E72)
    palette[30] = .init(rgb: 0x4F378B)
    palette[40] = .init(rgb: 0x6750A4)
    palette[50] = .init(rgb: 0x7F67BE)
    palette[60] = .init(rgb: 0x9A82DB)
    palette[70] = .init(rgb: 0xB69DF8)
    palette[80] = .init(rgb: 0xD0BCFF)
    palette[90] = .init(rgb: 0xEADDFF)
    palette[95] = .init(rgb: 0xF6EDFF)
    palette[99] = .init(rgb: 0xFFFBFE)
    palette[100] = .init(rgb: 0xFFFFFF)
    
    return palette
}()

private let designKitDefaultSecondary = {
    var palette = [Color](repeating: .clear, count: 101)
    palette[0] = .init(rgb: 0x000000)
    palette[10] = .init(rgb: 0x1D192B)
    palette[20] = .init(rgb: 0x332D41)
    palette[30] = .init(rgb: 0x4A4458)
    palette[40] = .init(rgb: 0x625B71)
    palette[50] = .init(rgb: 0x7A7289)
    palette[60] = .init(rgb: 0x958DA5)
    palette[70] = .init(rgb: 0xB0A7C0)
    palette[80] = .init(rgb: 0xCCC2DC)
    palette[90] = .init(rgb: 0xE8DEF8)
    palette[95] = .init(rgb: 0xF6EDFF)
    palette[99] = .init(rgb: 0xFFFBFE)
    palette[100] = .init(rgb: 0xFFFFFF)
    
    return palette
}()

private let designKitDefaultTertiary = {
    var palette = [Color](repeating: .clear, count: 101)
    palette[0] = .init(rgb: 0x000000)
    palette[10] = .init(rgb: 0x31111D)
    palette[20] = .init(rgb: 0x492532)
    palette[30] = .init(rgb: 0x633B48)
    palette[40] = .init(rgb: 0x7D5260)
    palette[50] = .init(rgb: 0x986977)
    palette[60] = .init(rgb: 0xB58392)
    palette[70] = .init(rgb: 0xD29DAC)
    palette[80] = .init(rgb: 0xEFB8C8)
    palette[90] = .init(rgb: 0xFFD8E4)
    palette[95] = .init(rgb: 0xFFECF1)
    palette[99] = .init(rgb: 0xFFFBFA)
    palette[100] = .init(rgb: 0xFFFFFF)
    
    return palette
}()

private let designKitDefaultError = {
    var palette = [Color](repeating: .clear, count: 101)
    palette[0] = .init(rgb: 0x000000)
    palette[10] = .init(rgb: 0x410E0B)
    palette[20] = .init(rgb: 0x601410)
    palette[30] = .init(rgb: 0x8C1D18)
    palette[40] = .init(rgb: 0xB3261E)
    palette[50] = .init(rgb: 0xDC362E)
    palette[60] = .init(rgb: 0xE46962)
    palette[70] = .init(rgb: 0xEC928E)
    palette[80] = .init(rgb: 0xF2B8B5)
    palette[90] = .init(rgb: 0xF9DEDC)
    palette[95] = .init(rgb: 0xFCEEEE)
    palette[99] = .init(rgb: 0xFFFBF9)
    palette[100] = .init(rgb: 0xFFFFFF)
    
    return palette
}()

private let designKitDefaultNeutral = {
    var palette = [Color](repeating: .clear, count: 101)
    palette[0] = .init(rgb: 0x000000)
    palette[4] = .init(rgb: 0x0F0D13)
    palette[6] = .init(rgb: 0x141218)
    palette[10] = .init(rgb: 0x1D1B20)
    palette[12] = .init(rgb: 0x211F26)
    palette[17] = .init(rgb: 0x2B2930)
    palette[20] = .init(rgb: 0x322F35)
    palette[22] = .init(rgb: 0x36343B)
    palette[24] = .init(rgb: 0x3B383E)
    palette[30] = .init(rgb: 0x48464C)
    palette[40] = .init(rgb: 0x605D64)
    palette[50] = .init(rgb: 0x79767D)
    palette[60] = .init(rgb: 0x938F96)
    palette[70] = .init(rgb: 0xAEA9B1)
    palette[80] = .init(rgb: 0xCAC5CD)
    palette[87] = .init(rgb: 0xDED8E1)
    palette[90] = .init(rgb: 0xE6E0E9)
    palette[92] = .init(rgb: 0xECE6F0)
    palette[94] = .init(rgb: 0xF3EDF7)
    palette[95] = .init(rgb: 0xF5EFF7)
    palette[96] = .init(rgb: 0xF7F2FA)
    palette[99] = .init(rgb: 0xFFFBFF)
    palette[100] = .init(rgb: 0xFFFFFF)
    
    return palette
}()

private let designKitDefaultNeutralVariant = {
    var palette = [Color](repeating: .clear, count: 101)
    palette[0] = .init(rgb: 0x000000)
    palette[4] = .init(rgb: 0x130C12)
    palette[6] = .init(rgb: 0x181118)
    palette[10] = .init(rgb: 0x1D1A22)
    palette[12] = .init(rgb: 0x251D24)
    palette[17] = .init(rgb: 0x2F282F)
    palette[20] = .init(rgb: 0x322F37)
    palette[22] = .init(rgb: 0x3B323A)
    palette[24] = .init(rgb: 0x3F373E)
    palette[30] = .init(rgb: 0x49454F)
    palette[40] = .init(rgb: 0x605D66)
    palette[50] = .init(rgb: 0x79747E)
    palette[60] = .init(rgb: 0x938F99)
    palette[70] = .init(rgb: 0xAEA9B4)
    palette[80] = .init(rgb: 0xCAC4D0)
    palette[87] = .init(rgb: 0xE4D6E0)
    palette[90] = .init(rgb: 0xE7E0EC)
    palette[92] = .init(rgb: 0xF2E4EE)
    palette[94] = .init(rgb: 0xF8EAF4)
    palette[95] = .init(rgb: 0xF5EEFA)
    palette[96] = .init(rgb: 0xFEF0F9)
    palette[99] = .init(rgb: 0xFFFBFE)
    palette[100] = .init(rgb: 0xFFFFFF)
    
    return palette
}()



@available(iOS 13.0, *)
extension Color {
    public struct Material {
        public static let designKitDefault = Material(
            palettes: .init(
                primary: designKitDefaultPrimary,
                secondary: designKitDefaultSecondary,
                tertiary: designKitDefaultTertiary,
                error: designKitDefaultError,
                neutral: designKitDefaultNeutral,
                neutralVariant: designKitDefaultNeutralVariant
            )
        )
        
        public let light: Light
        public let dark: Dark
        
        public init(palettes: Palettes) {
            self.light = .init(palettes: palettes)
            self.dark = .init(palettes: palettes)
        }
        
        public init(light: Light, dark: Dark) {
            self.light = light
            self.dark = dark
        }
        
        public func current(colorScheme: ColorScheme) -> MaterialColorScheme {
            if colorScheme == .light {
                return light
            } else {
                return dark
            }
        }
    }
}

@available(iOS 13.0, *)
extension Color.Material {
    public struct Light {
        public let palettes: Palettes
        
        public init(palettes: Palettes) {
            self.palettes = palettes
        }
    }
}

@available(iOS 13.0, *)
extension Color.Material.Light: MaterialColorScheme {
    // Primary
    public var primary: Color { palettes.primary[40] }
    public var onPrimary: Color { palettes.primary[100] }
    public var primaryContainer: Color { palettes.primary[90] }
    public var onPrimaryContainer: Color { palettes.primary[10] }
    
    // Secondary
    public var secondary: Color { palettes.secondary[40] }
    public var onSecondary: Color { palettes.secondary[100] }
    public var secondaryContainer: Color { palettes.secondary[90] }
    public var onSecondaryContainer: Color { palettes.secondary[10] }
    
    // Tertiary
    public var tertiary: Color { palettes.tertiary[40] }
    public var onTertiary: Color { palettes.tertiary[100] }
    public var tertiaryContainer: Color { palettes.tertiary[90] }
    public var onTertiaryContainer: Color { palettes.tertiary[10] }
    
    // Error
    public var error: Color { palettes.error[40] }
    public var onError: Color { palettes.error[100] }
    public var errorContainer: Color { palettes.error[90] }
    public var onErrorContainer: Color { palettes.error[10] }
    
    // Primary Fixed
    public var primaryFixed: Color { palettes.primary[90] }
    public var primaryFixedDim: Color { palettes.primary[80] }
    public var onPrimaryFixed: Color { palettes.primary[10] }
    public var onPrimaryFixedVariant: Color { palettes.primary[30] }
    
    // Secondary Fixed
    public var secondaryFixed: Color { palettes.secondary[90] }
    public var secondaryFixedDim: Color { palettes.secondary[80] }
    public var onSecondaryFixed: Color { palettes.secondary[10] }
    public var onSecondaryFixedVariant: Color { palettes.secondary[30] }
    
    // Tertiary Fixed
    public var tertiaryFixed: Color { palettes.tertiary[90] }
    public var tertiaryFixedDim: Color { palettes.tertiary[80] }
    public var onTertiaryFixed: Color { palettes.tertiary[10] }
    public var onTertiaryFixedVariant: Color { palettes.tertiary[30] }
    
    // Surface
    public var surfaceDim: Color { palettes.neutral[87] }
    public var surface: Color { palettes.neutral[98] }
    public var surfaceBright: Color { palettes.neutral[98] }
    public var surfaceContainerLowest: Color { palettes.neutral[100] }
    public var surfaceContainerLow: Color { palettes.neutral[96] }
    public var surfaceContainer: Color { palettes.neutral[94] }
    public var surfaceContainerHigh: Color { palettes.neutral[92] }
    public var surfaceContainerHighest: Color { palettes.neutral[90] }
    public var onSurface: Color { palettes.neutral[10] }
    public var onSurfaceVariant: Color { palettes.neutralVariant[30] }
    
    // Outline
    public var outline: Color { palettes.neutralVariant[50] }
    public var outlineVariant: Color { palettes.neutralVariant[80] }
    
    // Inverse
    public var inverseSurface: Color { palettes.neutral[20] }
    public var inverseOnSurface: Color { palettes.neutral[95] }
    public var inversePrimary: Color { palettes.primary[80] }
    
    // Other
    public var scrim: Color { palettes.neutral[0] }
    public var shadow: Color { palettes.neutral[0] }
}

@available(iOS 13.0, *)
extension Color.Material {
    public struct Dark {
        public let palettes: Palettes
        
        public init(palettes: Palettes) {
            self.palettes = palettes
        }
    }
}

@available(iOS 13.0, *)
extension Color.Material.Dark: MaterialColorScheme {
    // Primary
    public var primary: Color { palettes.primary[80] }
    public var onPrimary: Color { palettes.primary[20] }
    public var primaryContainer: Color { palettes.primary[30] }
    public var onPrimaryContainer: Color { palettes.primary[90] }
    
    // Secondary
    public var secondary: Color { palettes.secondary[80] }
    public var onSecondary: Color { palettes.secondary[20] }
    public var secondaryContainer: Color { palettes.secondary[30] }
    public var onSecondaryContainer: Color { palettes.secondary[90] }
    
    // Tertiary
    public var tertiary: Color { palettes.tertiary[80] }
    public var onTertiary: Color { palettes.tertiary[20] }
    public var tertiaryContainer: Color { palettes.tertiary[30] }
    public var onTertiaryContainer: Color { palettes.tertiary[90] }
    
    // Error
    public var error: Color { palettes.error[80] }
    public var onError: Color { palettes.error[20] }
    public var errorContainer: Color { palettes.error[30] }
    public var onErrorContainer: Color { palettes.error[90] }
    
    // Primary Fixed
    public var primaryFixed: Color { palettes.primary[90] }
    public var primaryFixedDim: Color { palettes.primary[80] }
    public var onPrimaryFixed: Color { palettes.primary[10] }
    public var onPrimaryFixedVariant: Color { palettes.primary[30] }
    
    // Secondary Fixed
    public var secondaryFixed: Color { palettes.secondary[90] }
    public var secondaryFixedDim: Color { palettes.secondary[80] }
    public var onSecondaryFixed: Color { palettes.secondary[10] }
    public var onSecondaryFixedVariant: Color { palettes.secondary[30] }
    
    // Tertiary Fixed
    public var tertiaryFixed: Color { palettes.tertiary[90] }
    public var tertiaryFixedDim: Color { palettes.tertiary[80] }
    public var onTertiaryFixed: Color { palettes.tertiary[10] }
    public var onTertiaryFixedVariant: Color { palettes.tertiary[30] }
    
    // Surface
    public var surfaceDim: Color { palettes.neutral[6] }
    public var surface: Color { palettes.neutral[6] }
    public var surfaceBright: Color { palettes.neutral[24] }
    public var surfaceContainerLowest: Color { palettes.neutral[4] }
    public var surfaceContainerLow: Color { palettes.neutral[10] }
    public var surfaceContainer: Color { palettes.neutral[12] }
    public var surfaceContainerHigh: Color { palettes.neutral[17] }
    public var surfaceContainerHighest: Color { palettes.neutral[22] }
    public var onSurface: Color { palettes.neutral[90] }
    public var onSurfaceVariant: Color { palettes.neutralVariant[80] }
    
    // Outline
    public var outline: Color { palettes.neutralVariant[60] }
    public var outlineVariant: Color { palettes.neutralVariant[30] }
    
    // Inverse
    public var inverseSurface: Color { palettes.neutral[90] }
    public var inverseOnSurface: Color { palettes.neutral[20] }
    public var inversePrimary: Color { palettes.primary[40] }
    
    // Other
    public var scrim: Color { palettes.neutral[0] }
    public var shadow: Color { palettes.neutral[0] }
}

@available(iOS 13.0, *)
extension Color.Material {
    public typealias Palette = [Color]
}

@available(iOS 13.0, *)
extension Color.Material {
    public struct Palettes {
        public let primary: Palette
        public let secondary: Palette
        public let tertiary: Palette
        public let error: Palette
        public let neutral: Palette
        public let neutralVariant: Palette
        
        public init(primary: Palette, secondary: Palette, tertiary: Palette, error: Palette, neutral: Palette, neutralVariant: Palette) {
            self.primary = primary
            self.secondary = secondary
            self.tertiary = tertiary
            self.error = error
            self.neutral = neutral
            self.neutralVariant = neutralVariant
        }
    }
}

public protocol MaterialColorScheme {
    var palettes: Color.Material.Palettes { get }
    
    // Primary
    var primary: Color { get }
    var onPrimary: Color { get }
    var primaryContainer: Color { get }
    var onPrimaryContainer: Color { get }
    
    // Secondary
    var secondary: Color { get }
    var onSecondary: Color { get }
    var secondaryContainer: Color { get }
    var onSecondaryContainer: Color { get }
    
    // Tertiary
    var tertiary: Color { get }
    var onTertiary: Color { get }
    var tertiaryContainer: Color { get }
    var onTertiaryContainer: Color { get }
    
    // Error
    var error: Color { get }
    var onError: Color { get }
    var errorContainer: Color { get }
    var onErrorContainer: Color { get }
    
    // Primary Fixed
    var primaryFixed: Color { get }
    var primaryFixedDim: Color { get }
    var onPrimaryFixed: Color { get }
    var onPrimaryFixedVariant: Color { get }
    
    // Secondary Fixed
    var secondaryFixed: Color { get }
    var secondaryFixedDim: Color { get }
    var onSecondaryFixed: Color { get }
    var onSecondaryFixedVariant: Color { get }
    
    // Tertiary Fixed
    var tertiaryFixed: Color { get }
    var tertiaryFixedDim: Color { get }
    var onTertiaryFixed: Color { get }
    var onTertiaryFixedVariant: Color { get }
    
    // Surface
    var surfaceDim: Color { get }
    var surface: Color { get }
    var surfaceBright: Color { get }
    var surfaceContainerLowest: Color { get }
    var surfaceContainerLow: Color { get }
    var surfaceContainer: Color { get }
    var surfaceContainerHigh: Color { get }
    var surfaceContainerHighest: Color { get }
    var onSurface: Color { get }
    var onSurfaceVariant: Color { get }
    
    // Outline
    var outline: Color { get }
    var outlineVariant: Color { get }
    
    // Inverse
    var inverseSurface: Color { get }
    var inverseOnSurface: Color { get }
    var inversePrimary: Color { get }
    
    // Other
    var scrim: Color { get }
    var shadow: Color { get }
}
