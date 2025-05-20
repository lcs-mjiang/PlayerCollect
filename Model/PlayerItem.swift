//
//  PlayerItem.swift
//  PlayerCollect
//
//  Created by Michael on 2025/5/20.
//

import Foundation

struct PlayerItem: Identifiable, Codable, Equatable {
    let id = UUID()
    let name: String
    let country: String
    let rank: Int
    let wins: Int
    let losses: Int
    let equipment: [String]
}
