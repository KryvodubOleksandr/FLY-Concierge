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
            .foregroundColor(.primary)
    }
}

struct ImageButton_Previews: PreviewProvider {
    static var previews: some View {
        ImageButton("star")
    }
}
