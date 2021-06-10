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
}
struct Padding {
    static let small = CGFloat(4)
    static let medium = CGFloat(10)
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
