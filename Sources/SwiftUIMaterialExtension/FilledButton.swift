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
    public var label: String
    public var icon: Image? = nil
    public var action: (() -> Void)? = nil
    
    public init(colors: Color.Material, label: String, icon: Image? = nil, action: (() -> Void)? = nil) {
        self.colors = colors
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
                        .foregroundStyle(foregroundColor())
                } else {
                    Spacer().frame(width: 24)
                }
                
                Text(label)
                    .padding(.vertical, 10)
                    .font(.materialSystem(style: .LabelLarge))
                    .foregroundStyle(foregroundColor())
                Spacer().frame(width: 24)
            }
        })  .buttonStyle(FilledButtonStyle(colors: currentColor()))
            .clipShape(.capsule(style: .continuous))
    }
    
    func foregroundColor() -> Color {
        if isEnabled {
            if isFocused {
                return currentColor().onPrimary.opacity(0.92)
            } else {
                return currentColor().onPrimary
            }
        } else {
            return currentColor().onSurface.opacity(0.12)
        }
    }
}

@available(iOS 14.0, *)
private struct FilledButtonStyle: ButtonStyle {
    public var colors: MaterialColorScheme
    @Environment(\.colorScheme)
    public var colorScheme
    @Environment(\.isEnabled)
    public var isEnabled
    @Environment(\.isFocused)
    public var isFocused
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(backgroundColor(isPressed: configuration.isPressed))
            .elevation(style: .current1(colorScheme: colorScheme)) { configuration.isPressed }
    }
    
    func backgroundColor(isPressed: Bool) -> Color {
        if isEnabled {
            if isFocused || isPressed {
                return colors.primary.opacity(0.92)
            } else {
                return colors.primary
            }
        } else {
            return colors.onSurface.opacity(0.12)
        }
    }
}

@available(iOS 15.0, *)
private struct FilledButtonPreview: View {
    @FocusState
    var focusState: PreviewFocus?
    
    enum PreviewFocus: Hashable {
        case a
    }
    
    var body: some View {
        VStack {
            if #available(iOS 17.0, *) {
                FilledButton(colors: .designKitDefault, label: "Hello")
                
                FilledButton(colors: .designKitDefault, label: "Not Focused")
                
                FilledButton(colors: .designKitDefault, label: "Hello")
                    .disabled(true)
                
                FilledButton(colors: .designKitDefault, label: "Hello", icon: .init(systemName: "plus"))
                
                FilledButton(colors: .designKitDefault, label: "Hello", icon: .init(systemName: "plus"))
                    .disabled(true)
            }
        }.onAppear {
            focusState = .a
        }
    }
}

#Preview {
    VStack {
        if #available(iOS 15.0, *) {
            FilledButtonPreview()
        } else {
            // Fallback on earlier versions
        }
    }
}
