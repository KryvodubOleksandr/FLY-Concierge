//
//  Size.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 10.06.2021.
//

import Foundation
import SwiftUI

struct Opacity {
    static let background = 0.1
    static let bubble = 0.9
}
struct Size {
    static let cornerRadius = CGFloat(15)
    static let largeButton = CGFloat(60)
    static let smallImage = CGFloat(25)
    static let largeImage = CGFloat(150)
}
struct Padding {
    static let small = CGFloat(4)
    static let regular = CGFloat(6)
    static let medium = CGFloat(8)
    static let large = CGFloat(12)
}
struct Spacing {
    static let small = CGFloat(5)
    static let medium = CGFloat(10)
}
struct Colour {
    static let accent = Color(.systemTeal)
    static let main = Color(.systemGray4).opacity(Opacity.bubble)
    static let shadow = Color.primary.opacity(0.1)
    static let text = Color.primary
    static let secondaryText = Color.black
}
struct AppContent {
    static let description = "The FLY iOS App is a contemporary tool designed to optimize free time by taking the quessworkout of social activities. It represents the evolution of the archaic hotel concierge platform refashioned into disruptive modern day mobile alternative available to all."
    static let messages = [Message(text: "Hello there☀️", isUsers: false),
                           Message(text: "Welcome to FLY Concierge!", isUsers: false),
                           Message(text: "Can I show the coolest places in New York near you?", isUsers: false),
                           Message(text: "Yes, show me what you got☺️", isUsers: true),
                           Message(text: "Awesome", isUsers: false),
                           Message(text: "So, where are you?🧐", isUsers: false),
                           Message(text: "Please allow me access to your geo laction", isUsers: false),
                           Message(text: "I`m working on it", isUsers: true)]
}
