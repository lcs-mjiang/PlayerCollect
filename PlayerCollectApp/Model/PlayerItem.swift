//
//  PlayerItem.swift
//  PlayerCollect
//
//  Created by Michael on 2025/5/20.
//

import SwiftUI

struct PlayerItem: Identifiable, Codable, Equatable {
    let id = UUID()
    let name: String
    let country: String
    let rank: Int
    let wins: Int
    let losses: Int
    let equipment: [String]
}

let example1 = PlayerItem(name: "Viktor Axelsen", country: "Denmark", rank: 1, wins: 300, losses: 50, equipment: ["Yonex Astrox 100ZZ"])
let example2 = PlayerItem(name: "Kento Momota", country: "Japan", rank: 10, wins: 280, losses: 70, equipment: ["Yonex Astrox 99 Pro"])
let example3 = PlayerItem(name: "Anthony Ginting", country: "Indonesia", rank: 5, wins: 260, losses: 65, equipment: ["Li-Ning Aeronaut 9000C"])
