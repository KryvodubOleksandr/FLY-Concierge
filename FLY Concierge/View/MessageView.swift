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
            .padding(Padding.large)
            .foregroundColor(!message.isUsers && colorScheme == .dark ? Colour.text : Colour.secondaryText)
            .background(message.isUsers ? Colour.accent : Colour.main)
            .cornerRadius(Size.cornerRadius)
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: Message(text: "Hello", isUsers:    false))
    }
}
