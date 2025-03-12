//
//  Model.swift
//  CleanSwift-MVVM-06-02-25
//
//  Created by Aleksandr Zhazhoyan on 12.03.2025.
//

import Foundation

struct Joke: Codable {
    let id: String
    let joke: String?
    let setup: String?
    let delivery: String?
    let type: String
}
