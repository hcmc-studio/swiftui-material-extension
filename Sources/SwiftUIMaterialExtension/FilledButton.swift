//
//  FilledButton.swift
//
//
//  Created by Ji-Hwan Kim on 12/7/23.
//

import SwiftUI

@available(iOS 15.0, *)
public struct FilledButton: MaterialView {
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
            HStack {
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
        })  .buttonStyle(FilledButtonStyle(colors: currentColorScheme, colorPresetElement: colorPresetElement))
            .clipShape(.capsule(style: .continuous))
    }
    
    func foregroundColor() -> Color {
        if isEnabled {
            if isFocused {
                return colorPresetElement.onPreset.opacity(0.88)
            } else {
                return colorPresetElement.onPreset
            }
        } else {
            return currentColorScheme.onSurface.opacity(0.12)
        }
    }
}

@available(iOS 14.0, *)
private struct FilledButtonStyle: ButtonStyle {
    public var colors: MaterialColorScheme
    public var colorPresetElement: Color.Material.PresetElement
    @Environment(\.colorScheme)
    public var colorScheme
    @Environment(\.isEnabled)
    public var isEnabled
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(backgroundColor(isPressed: configuration.isPressed))
            .elevation(style: .current1(colorScheme: colorScheme)) { configuration.isPressed }
    }
    
    func backgroundColor(isPressed: Bool) -> Color {
        if isEnabled {
            if isPressed {
                return colorPresetElement.preset.opacity(0.88)
            } else {
                return colorPresetElement.preset
            }
        } else {
            return colors.onSurface.opacity(0.12)
        }
    }
}

#Preview {
    HStack {
        if #available(iOS 15.0, *) {
            VStack {
                FilledButton(colors: .designKitDefault, label: "Label")
                FilledButton(colors: .designKitDefault, label: "Label").disabled(true)
                FilledButton(colors: .designKitDefault, colorPreset: .secondary, label: "Label")
                FilledButton(colors: .designKitDefault, colorPreset: .secondary, label: "Label").disabled(true)
                FilledButton(colors: .designKitDefault, colorPreset: .tertiary, label: "Label")
                FilledButton(colors: .designKitDefault, colorPreset: .tertiary, label: "Label").disabled(true)
                FilledButton(colors: .designKitDefault, colorPreset: .error, label: "Label")
                FilledButton(colors: .designKitDefault, colorPreset: .error, label: "Label").disabled(true)
            }
            VStack {
                FilledButton(colors: .designKitDefault, label: "Label", icon: .init(systemName: "plus"))
                FilledButton(colors: .designKitDefault, label: "Label", icon: .init(systemName: "plus")).disabled(true)
                FilledButton(colors: .designKitDefault, colorPreset: .secondary, label: "Label", icon: .init(systemName: "plus"))
                FilledButton(colors: .designKitDefault, colorPreset: .secondary, label: "Label", icon: .init(systemName: "plus")).disabled(true)
                FilledButton(colors: .designKitDefault, colorPreset: .tertiary, label: "Label", icon: .init(systemName: "plus"))
                FilledButton(colors: .designKitDefault, colorPreset: .tertiary, label: "Label", icon: .init(systemName: "plus")).disabled(true)
                FilledButton(colors: .designKitDefault, colorPreset: .error, label: "Label", icon: .init(systemName: "plus"))
                FilledButton(colors: .designKitDefault, colorPreset: .error, label: "Label", icon: .init(systemName: "plus")).disabled(true)
            }
        } else {
            // Fallback on earlier versions
        }
    }
}
