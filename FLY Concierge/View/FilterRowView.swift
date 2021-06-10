//
//  ToggleRow.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 10.06.2021.
//

import SwiftUI

struct FilterRowView: View {
    @Binding var isOn: Bool
    let title: String
    let imageName: String
    var body: some View {
        HStack {
            Label(title: {
                    Text(title).lineLimit(1)
            }) { Image(systemName: imageName) }
                .layoutPriority(1)
            Toggle(isOn: $isOn) {}
        }
    }
}
