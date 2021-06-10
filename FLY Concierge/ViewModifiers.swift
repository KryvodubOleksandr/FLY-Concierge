//
//  ViewModifiers.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 10.06.2021.
//

import SwiftUI

struct BackgroundModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Image("background")
            .resizable()
            .renderingMode(.template)
            .aspectRatio(contentMode: .fill)
            .opacity(Opacity.background))
    }
}
extension View {
    func addBackground() -> some View {
        self.modifier(BackgroundModifier())
    }
}

struct MessageStack<Content: View>: View {
    let content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        LazyVStack(alignment: .leading, spacing: Spacing.medium) {
            content
        }
        .padding(.top, Padding.medium)
        .padding(.leading, Padding.small)
        .padding(.trailing, Padding.small)
        .padding(.bottom, Padding.small)
    }
}
