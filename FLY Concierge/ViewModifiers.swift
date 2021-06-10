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
            .opacity(0.1))
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
        LazyVStack(alignment: .leading, spacing: 10) {
            content
        }
        .padding(.top, 10)
        .padding(.leading, 5)
        .padding(.trailing, 5)
        .padding(.bottom, 5)
    }
}
