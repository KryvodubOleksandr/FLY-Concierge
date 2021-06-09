//
//  MessageListViewModel.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 09.06.2021.
//

import Foundation

final class MessageListViewModel: ObservableObject {
    @Published var messages: [Message] = []
    
    init() {
        self.set()
    }
    
    func set() {
        self.messages = [Message(text: "Hello =)", isUsers: false),
                         Message(text: "Welcome to FLY Concierge", isUsers: false),
                         Message(text: "Can I show the coolest places in New York near you?", isUsers: false),
                         Message(text: "Yes, show me what you got", isUsers: true),
                         Message(text: "Awesome", isUsers: false)]
    }
}
