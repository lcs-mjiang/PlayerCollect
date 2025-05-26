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

let example1 = PlayerItem(name: "Viktor Axelsen", country: "Denmark", rank: 1, wins: 300, losses: 50, equipment: ["Yonex Astrox 100ZZ"])
let example2 = PlayerItem(name: "Kento Momota", country: "Japan", rank: 2, wins: 280, losses: 70, equipment: ["Yonex Astrox 99 Pro"])
let example3 = PlayerItem(name: "Anthony Ginting", country: "Indonesia", rank: 3, wins: 260, losses: 65, equipment: ["Li-Ning Aeronaut 9000C"])
let example4 = PlayerItem(name: "Chou Tien Chen", country: "Taiwan", rank: 4, wins: 255, losses: 55, equipment: ["Yonex Nanoflare 700"])
let example5 = PlayerItem(name: "Lee Zii Jia", country: "Malaysia", rank: 5, wins: 250, losses: 60, equipment: ["Yonex Astrox 99 Pro"])
let example6 = PlayerItem(name: "Anders Antonsen", country: "Denmark", rank: 6, wins: 245, losses: 58, equipment: ["Yonex Astrox 88D"])
let example7 = PlayerItem(name: "Jonatan Christie", country: "Indonesia", rank: 7, wins: 240, losses: 62, equipment: ["Victor Thruster K"])
let example8 = PlayerItem(name: "HS Prannoy", country: "India", rank: 8, wins: 235, losses: 65, equipment: ["Yonex Astrox 99"])
let example9 = PlayerItem(name: "Lakshya Sen", country: "India", rank: 9, wins: 230, losses: 67, equipment: ["Li-Ning Turbo X 90"])
let example10 = PlayerItem(name: "Ng Ka Long", country: "Hong Kong", rank: 10, wins: 225, losses: 63, equipment: ["Yonex Astrox 88S"])

let example11 = PlayerItem(name: "Wang Tzu Wei", country: "Taiwan", rank: 11, wins: 220, losses: 70, equipment: ["Yonex Nanoflare 700"])
let example12 = PlayerItem(name: "Lee Chong Wei", country: "Malaysia", rank: 12, wins: 215, losses: 55, equipment: ["Yonex Duora Z-Strike"])
let example13 = PlayerItem(name: "Shi Yu Qi", country: "China", rank: 13, wins: 210, losses: 60, equipment: ["Li-Ning Aeronaut 9000C"])
let example14 = PlayerItem(name: "V Shem Wee", country: "Malaysia", rank: 14, wins: 205, losses: 58, equipment: ["Yonex Voltric Z-Force II"])
let example15 = PlayerItem(name: "Ratchanok Intanon", country: "Thailand", rank: 15, wins: 200, losses: 62, equipment: ["Yonex Astrox 99"])
let example16 = PlayerItem(name: "Carolina Marin", country: "Spain", rank: 16, wins: 195, losses: 50, equipment: ["Adidas Wucht P8"])
let example17 = PlayerItem(name: "Tai Tzu Ying", country: "Taiwan", rank: 17, wins: 190, losses: 52, equipment: ["Yonex Astrox 88D"])
let example18 = PlayerItem(name: "P.V. Sindhu", country: "India", rank: 18, wins: 185, losses: 48, equipment: ["Yonex Astrox 99 Pro"])
let example19 = PlayerItem(name: "Nozomi Okuhara", country: "Japan", rank: 19, wins: 180, losses: 54, equipment: ["Yonex Nanoflare 700"])
let example20 = PlayerItem(name: "Akane Yamaguchi", country: "Japan", rank: 20, wins: 175, losses: 49, equipment: ["Yonex Astrox 100ZZ"])

let example21 = PlayerItem(name: "Chen Long", country: "China", rank: 21, wins: 170, losses: 60, equipment: ["Li-Ning Aeronaut 9000C"])
let example22 = PlayerItem(name: "Kento Momota", country: "Japan", rank: 22, wins: 165, losses: 58, equipment: ["Yonex Astrox 99 Pro"])
let example23 = PlayerItem(name: "Lee Hyun Il", country: "Korea", rank: 23, wins: 160, losses: 64, equipment: ["Yonex Nanoflare 700"])
let example24 = PlayerItem(name: "Victor Axelsen", country: "Denmark", rank: 24, wins: 155, losses: 52, equipment: ["Yonex Astrox 100ZZ"])
let example25 = PlayerItem(name: "Kidambi Srikanth", country: "India", rank: 25, wins: 150, losses: 55, equipment: ["Yonex Voltric Z-Force II"])
let example26 = PlayerItem(name: "Lin Dan", country: "China", rank: 26, wins: 145, losses: 60, equipment: ["Li-Ning Turbo Charging"])
let example27 = PlayerItem(name: "Tommy Sugiarto", country: "Indonesia", rank: 27, wins: 140, losses: 57, equipment: ["Victor Thruster K"])
let example28 = PlayerItem(name: "Srikanth Kidambi", country: "India", rank: 28, wins: 135, losses: 60, equipment: ["Yonex Astrox 99 Pro"])
let example29 = PlayerItem(name: "Hans-Kristian Vittinghus", country: "Denmark", rank: 29, wins: 130, losses: 50, equipment: ["Yonex Astrox 88D"])
let example30 = PlayerItem(name: "Tommy Sugiarto", country: "Indonesia", rank: 30, wins: 125, losses: 53, equipment: ["Victor Thruster K"])

let example31 = PlayerItem(name: "Liew Daren", country: "Malaysia", rank: 31, wins: 120, losses: 45, equipment: ["Yonex Nanoflare 700"])
let example32 = PlayerItem(name: "Tian Houwei", country: "China", rank: 32, wins: 115, losses: 60, equipment: ["Li-Ning Aeronaut 9000C"])
let example33 = PlayerItem(name: "Rajiv Ouseph", country: "England", rank: 33, wins: 110, losses: 55, equipment: ["Yonex Voltric Z-Force II"])
let example34 = PlayerItem(name: "Nguyen Tien Minh", country: "Vietnam", rank: 34, wins: 105, losses: 50, equipment: ["Yonex Astrox 99"])
let example35 = PlayerItem(name: "Marc Zwiebler", country: "Germany", rank: 35, wins: 100, losses: 58, equipment: ["Yonex Nanoflare 700"])
let example36 = PlayerItem(name: "Parupalli Kashyap", country: "India", rank: 36, wins: 95, losses: 60, equipment: ["Yonex Astrox 99 Pro"])
let example37 = PlayerItem(name: "Vladimir Ivanov", country: "Russia", rank: 37, wins: 90, losses: 50, equipment: ["Victor Thruster K"])
let example38 = PlayerItem(name: "Lee Yong Dae", country: "Korea", rank: 38, wins: 85, losses: 53, equipment: ["Yonex Nanoflare 700"])
let example39 = PlayerItem(name: "Marcus Fernaldi Gideon", country: "Indonesia", rank: 39, wins: 80, losses: 60, equipment: ["Victor Thruster K"])
let example40 = PlayerItem(name: "Mathias Boe", country: "Denmark", rank: 40, wins: 75, losses: 55, equipment: ["Yonex Astrox 88D"])

let example41 = PlayerItem(name: "Peter Gade", country: "Denmark", rank: 41, wins: 70, losses: 50, equipment: ["Yonex Astrox 100ZZ"])
let example42 = PlayerItem(name: "Chong Wei Feng", country: "Malaysia", rank: 42, wins: 65, losses: 52, equipment: ["Yonex Nanoflare 700"])
let example43 = PlayerItem(name: "Taufik Hidayat", country: "Indonesia", rank: 43, wins: 60, losses: 55, equipment: ["Yonex Voltric Z-Force II"])
let example44 = PlayerItem(name: "Jan O Jorgensen", country: "Denmark", rank: 44, wins: 55, losses: 60, equipment: ["Yonex Astrox 88D"])


                            
