//
//  Filter.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 10.06.2021.
//

import Foundation

struct Filter {
    var eat = false
    var drink = false
    var play = false
    var close = false
    var travel = false
    var casual = false
    var trendy = false
    var formal = false
    var cheap = false
    var reasonable = false
    var expensive = false
    
    mutating func reset() {
        eat = false
        drink = false
        play = false
        close = false
        travel = false
        casual = false
        trendy = false
        formal = false
        cheap = false
        reasonable = false
        expensive = false
    }
}
