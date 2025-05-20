//
//  ItemView.swift
//  PlayerCollect
//
//  Created by Michael on 2025/5/20.
//

import SwiftUI

struct ItemView: View {
    let player: PlayerItem

    var body: some View {
        VStack {
            Text(player.name).font(.largeTitle)
            Text("Country: \(player.country)")
            Text("Rank: \(player.rank)")
        }
        .padding()
        .navigationTitle(player.name)
    }
}
