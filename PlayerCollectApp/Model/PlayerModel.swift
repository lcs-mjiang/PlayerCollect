//
//  PlayerModel.swift
//  PlayerCollect
//
//  Created by Michael on 2025/5/23.
//

import Foundation

struct Player: Identifiable, Codable {
    let id = UUID()
    
    let name: String
    let country: String
    let ranking: Int
    let points: Int
    let birthDate: String
    let matches: Int
    let wins: Int
    let losses: Int
}
