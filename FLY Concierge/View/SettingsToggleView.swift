//
//  SettingsToggleView.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 11.06.2021.
//

import SwiftUI

struct SettingsToggleView: View {
    @Binding var isOn: Bool
    let title: String
    var body: some View {
        HStack {
            Text(title)
                .lineLimit(1)
                .layoutPriority(1)
            Toggle(isOn: $isOn) {}
        }
        .font(.subheadline)
        .padding(.leading, Padding.large)
        .padding(.trailing, Padding.large)
        
    }
}
