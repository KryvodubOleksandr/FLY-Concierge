//
//  LargeButtonView.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 11.06.2021.
//

import SwiftUI

struct LargeButtonView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: Size.cornerRadius)
            .fill(Colour.accent)
            .frame(height: Size.largeButton)
            .overlay(Text("Apply")
            .font(.title3)
            .foregroundColor(Colour.secondaryText))
    }
}
