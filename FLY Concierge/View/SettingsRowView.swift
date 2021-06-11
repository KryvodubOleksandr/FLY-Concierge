//
//  SettingsRowView.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 11.06.2021.
//

import SwiftUI

struct SettingsRowView: View {
    let text: String
    var body: some View {
        Button(action: {}) {
            HStack {
                Text(text)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.secondary)
            }
            .foregroundColor(Colour.text)
            .padding(Padding.large)
            .background(Colour.main)
        }
    }
}
