//
//  ToggleRow.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 10.06.2021.
//

import SwiftUI

struct ToggleRow: View {
    @Binding var isOn: Bool
    let title: String
    let imageName: String
    var body: some View {
        HStack {
            Label(title: { Text(title).lineLimit(1) }, icon: { Image(systemName: imageName) }).layoutPriority(1)
            
            Toggle(isOn: $isOn) {}
        }
        .padding(.leading)
        .padding(.trailing)
        .padding(.top, 5)
        .padding(.bottom, 5)
        .background(Color(.systemGray4).opacity(0.4))
    }
}
