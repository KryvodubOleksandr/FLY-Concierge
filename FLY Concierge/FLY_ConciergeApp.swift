//
//  FLY_ConciergeApp.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 09.06.2021.
//

import SwiftUI

@main
struct FLY_ConciergeApp: App {
    
    init() {
//        UINavigationBar.appearance().isTranslucent = false
    }
    
    var body: some Scene {
        WindowGroup {
            ChatView()
        }
    }
}
