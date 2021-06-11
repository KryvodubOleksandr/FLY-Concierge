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
        HStack(spacing: 1) {
            if message.isUsers {
                Spacer()
            } else {
                VStack {
                    Spacer()
                    Circle()
                        .fill(Colour.main)
                        .frame(width: Size.smallImage, height: Size.smallImage)
                        .overlay(Text("FLY").font(.caption2))
                }
            }
            ChatBubble(isUsers: message.isUsers) {
                MessageView(message: message)
            }
        }
        .shadow(color: Colour.shadow, radius: 1, x: 1, y: 1)
    }
}

struct MessageRow_Previews: PreviewProvider {
    static var previews: some View {
        MessageRowView(message: Message(text: "Hello", isUsers: false))
    }
}
