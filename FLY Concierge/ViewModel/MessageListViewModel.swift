//
//  MessageListViewModel.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 09.06.2021.
//

import Foundation

final class MessageListViewModel: ObservableObject {
    @Published var messages: [Message] = AppContent.messages
}
