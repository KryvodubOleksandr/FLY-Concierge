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
                .padding()
            VStack(spacing: 1) {
                content
                    .padding(Padding.medium)
                    .background(Colour.main)
            }
            .cornerRadius(Size.cornerRadius)
        }
    }
}
