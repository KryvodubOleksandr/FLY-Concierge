//
//  ImageButton.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 10.06.2021.
//

import SwiftUI

struct ImageButton: View {
    let name: String
    init(_ name: String) {
        self.name = name
    }
    var body: some View {
        Image(systemName: name)
            .font(.title3)
    }
}

struct LargeButton: View {
    var body: some View {
        RoundedRectangle(cornerRadius: Size.cornerRadius)
            .fill(Colour.accent)
            .frame(height: Size.largeButton)
            .overlay(Text("Apply")
            .font(.title3)
            .foregroundColor(Colour.secondaryText))
    }
}

struct LogoImage: View {
    let imageName: String
    init(_ imageName: String) {
        self.imageName = imageName
    }
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: Size.largeImage, height: Size.largeImage)
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: Size.cornerRadius))
            .padding(Padding.small)
    }
}
