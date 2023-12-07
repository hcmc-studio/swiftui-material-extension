//
//  OutlinedCardView.swift
//
//
//  Created by Ji-Hwan Kim on 12/7/23.
//

import SwiftUI

public struct OutlinedCardViewView<Content>: MaterialView where Content: View {
    @Environment(\.colorScheme)
    public var colorScheme
    public var colors: Color.Material
    @ViewBuilder
    public let content: (MaterialColorScheme) -> Content
    
    public var body: some View {
        Group {
            content(currentColor())
        }   .background(currentColor().surface)
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .inset(by: 0.5)
                    .stroke(currentColor().outlineVariant, lineWidth: 1)
            )
    }
}

#Preview {
    return OutlinedCardViewView(colors: .designKitDefault) { colors in
        HStack(spacing: 16) {
            Text("A")
                .foregroundColor(colors.onPrimary)
                .font(.materialSystem(style: .TitleMedium))
                .frame(width: 40, height: 40, alignment: .center)
                .background(colors.primary)
                .clipShape(Circle())
                .padding(.vertical, 20)
                .padding(.leading, 16)
            VStack(alignment: .leading) {
                Text("Header")
                    .font(.materialSystem(style: .TitleMedium))
                    .tracking(style: .TitleMedium)
                    .lineSpacing(style: .TitleMedium)
                    .padding(.all, 0)
                    .foregroundColor(colors.onSurface)
                Text("Subhead")
                    .font(.materialSystem(style: .BodyMedium))
                    .tracking(style: .BodyMedium)
                    .lineSpacing(style: .BodyMedium)
                    .padding(.top, 4)
                    .foregroundColor(colors.onSurface)
            }
            Spacer()
            VStack {}
                .frame(width: 80, height: 80)
                .background(colors.palettes.neutral[50])
        }   .frame(width: 360)
    }
}
