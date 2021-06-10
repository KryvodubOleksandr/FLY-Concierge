//
//  MessageRowView.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 09.06.2021.
//

import SwiftUI

struct MessageRowView: View {
    
    let message: Message
    
    var body: some View {
        HStack(spacing: 5) {
            if message.isUsers {
                Spacer()
            } else {
                VStack {
                    Spacer()
                    Circle()
                        .fill(Color(.systemGray4).opacity(0.9))
                        .frame(width: 25, height: 25)
                        .overlay(Text("FLY").font(.caption2))
                }
            }
            MessageView(message: message)
        }
        .shadow(color: .primary.opacity(0.1), radius: 1, x: 1, y: 1)
    }
}

struct MessageRow_Previews: PreviewProvider {
    static var previews: some View {
        MessageRowView(message: Message(text: "Hello", isUsers: false))
    }
}
