//
//  MessageView.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 09.06.2021.
//

import SwiftUI

struct MessageView: View {
    @Environment(\.colorScheme) var colorScheme
    let message: Message
    
    var body: some View {
        Text(message.text)
            .padding(12)
            .foregroundColor(!message.isUsers && colorScheme == .dark ? .primary : .black)
            .background(message.isUsers ? Color(.systemTeal).opacity(0.9) : Color(.systemGray4).opacity(0.9))
            .cornerRadius(15)
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: Message(text: "Hello", isUsers:    false))
    }
}
