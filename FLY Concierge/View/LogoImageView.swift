//
//  LogoImageView.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 11.06.2021.
//

import SwiftUI

struct LogoImageView: View {
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
            .padding(.top, Size.largeButton - Padding.large)
    }
}
