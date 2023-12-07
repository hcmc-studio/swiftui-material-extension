//
//  OutlinedButton.swift
//
//
//  Created by Ji-Hwan Kim on 12/7/23.
//

import SwiftUI

@available(iOS 15.0, *)
public struct OutlinedButton: MaterialView {
    @Environment(\.colorScheme)
    public var colorScheme
    @Environment(\.isEnabled)
    public var isEnabled
    @Environment(\.isFocused)
    public var isFocused
    
    public var colors: Color.Material
    public var colorPreset: Color.Material.Preset = .primary
    public var label: String
    public var icon: Image? = nil
    public var action: (() -> Void)? = nil
    
    private var colorPresetElement: Color.Material.PresetElement { colorPreset.element(colors: currentColorScheme) }
    
    public init(
        colors: Color.Material,
        colorPreset: Color.Material.Preset = .primary,
        label: String,
        icon: Image? = nil,
        action: (() -> Void)? = nil
    ) {
        self.colors = colors
        self.colorPreset = colorPreset
        self.label = label
        self.icon = icon
        self.action = action
    }
    
    public var body: some View {
        Button(action: {
            if let action = action {
                action()
            }
        }, label: {
            HStack(spacing: 0) {
                if let icon = icon {
                    Spacer().frame(width: 16)
                    icon
                        .resizable()
                        .frame(width: 12, height: 12)
                        .padding(.all, 3)
                        .foregroundStyle(foregroundColor())
                    Spacer().frame(width: 8)
                } else {
                    Spacer().frame(width: 24)
                }
                
                Text(label)
                    .padding(.vertical, 10)
                    .font(.materialSystem(style: .LabelLarge))
                    .foregroundStyle(foregroundColor())
                Spacer().frame(width: 24)
            }
        })  .buttonStyle(OutlinedButtonStyle(colors: currentColorScheme, colorPresetElement: colorPresetElement))
            .clipShape(.capsule(style: .continuous))
            .overlay(
                Capsule()
                    .inset(by: 0.5)
                    .stroke(outlineColor())
            )
    }
    
    func foregroundColor() -> Color {
        if isEnabled {
            return colorPresetElement.preset
        } else {
            return currentColorScheme.onSurface.opacity(0.12)
        }
    }
    
    func outlineColor() -> Color {
        if isEnabled {
            return currentColorScheme.outline
        } else {
            return currentColorScheme.onSurface.opacity(0.12)
        }
    }
}

@available(iOS 14.0, *)
private struct OutlinedButtonStyle: ButtonStyle {
    public var colors: MaterialColorScheme
    public var colorPresetElement: Color.Material.PresetElement
    @Environment(\.colorScheme)
    public var colorScheme
    @Environment(\.isEnabled)
    public var isEnabled
    @Environment(\.isFocused)
    public var isFocused
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(backgroundColor(isPressed: configuration.isPressed))
    }
    
    func backgroundColor(isPressed: Bool) -> Color {
        if isEnabled {
            if isFocused || isPressed {
                return colorPresetElement.preset.opacity(0.12)
            } else {
                return .clear
            }
        } else {
            return .clear
        }
    }
}

#Preview {
    HStack {
        if #available(iOS 15.0, *) {
            VStack {
                OutlinedButton(colors: .designKitDefault, label: "Label")
                OutlinedButton(colors: .designKitDefault, label: "Label").disabled(true)
                OutlinedButton(colors: .designKitDefault, colorPreset: .secondary, label: "Label")
                OutlinedButton(colors: .designKitDefault, colorPreset: .secondary, label: "Label").disabled(true)
                OutlinedButton(colors: .designKitDefault, colorPreset: .tertiary, label: "Label")
                OutlinedButton(colors: .designKitDefault, colorPreset: .tertiary, label: "Label").disabled(true)
                OutlinedButton(colors: .designKitDefault, colorPreset: .error, label: "Label")
                OutlinedButton(colors: .designKitDefault, colorPreset: .error, label: "Label").disabled(true)
            }
            VStack {
                OutlinedButton(colors: .designKitDefault, label: "Label", icon: .init(systemName: "plus"))
                OutlinedButton(colors: .designKitDefault, label: "Label", icon: .init(systemName: "plus")).disabled(true)
                OutlinedButton(colors: .designKitDefault, colorPreset: .secondary, label: "Label", icon: .init(systemName: "plus"))
                OutlinedButton(colors: .designKitDefault, colorPreset: .secondary, label: "Label", icon: .init(systemName: "plus")).disabled(true)
                OutlinedButton(colors: .designKitDefault, colorPreset: .tertiary, label: "Label", icon: .init(systemName: "plus"))
                OutlinedButton(colors: .designKitDefault, colorPreset: .tertiary, label: "Label", icon: .init(systemName: "plus")).disabled(true)
                OutlinedButton(colors: .designKitDefault, colorPreset: .error, label: "Label", icon: .init(systemName: "plus"))
                OutlinedButton(colors: .designKitDefault, colorPreset: .error, label: "Label", icon: .init(systemName: "plus")).disabled(true)
            }
        } else {
            // Fallback on earlier versions
        }
    }
}
