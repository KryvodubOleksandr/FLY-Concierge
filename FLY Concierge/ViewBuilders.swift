//
//  ViewBuilders.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 10.06.2021.
//

import SwiftUI

struct FilterList<Content: View>: View {
    var content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 0) {
                content
                Rectangle().fill(Color.clear).frame(height: Size.largeButton)
                    .padding()
            }
            .padding(.top, Padding.small)
        }
        .padding(Padding.small)
    }
}

struct FilterGroup<Content: View>: View {
    let content: Content
    let name: String
    init(name: String, @ViewBuilder content: () -> Content) {
        self.name = name
        self.content = content()
    }
    var body: some View {
        Group {
            Text(name)
                .padding(Padding.medium)
            VStack(spacing: 1) {
                content
                    .padding(.leading, Padding.large)
                    .padding(.trailing, Padding.large)
                    .padding(.top, Padding.regular)
                    .padding(.bottom, Padding.regular)
                    .background(Colour.main)
            }
            .cornerRadius(Size.cornerRadius)
        }
    }
}

struct SettingsList<Content: View>: View {
    let content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        ScrollView {
            content
                .padding(.top, Padding.large)
                .padding(.leading, Padding.small)
                .padding(.trailing, Padding.small)
        }
    }
}

struct SettingsGroup<Content: View>: View {
    let content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        VStack(spacing: 1) {
            content
        }
        .cornerRadius(Size.cornerRadius)
    }
}

struct ChatBubble<Content>: View where Content: View {
    let isUsers: Bool
    let content: () -> Content
    init(isUsers: Bool, @ViewBuilder content: @escaping () -> Content) {
            self.content = content
            self.isUsers = isUsers
    }
    var direction: ChatBubbleShape.Direction {
        if isUsers == true {
            return .right
        } else {
            return .left
        }
    }
    
    var body: some View {
        HStack {
            if direction == .right {
                Spacer()
            }
            content()
                .clipShape(ChatBubbleShape(direction: direction))
            if direction == .left {
                Spacer()
            }
        }
    }
}
