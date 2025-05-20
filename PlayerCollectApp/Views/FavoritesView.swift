//
//  FavoritesView.swift
//  PlayerCollect
//
//  Created by Michael on 2025/5/20.
//

import SwiftUI

struct FavoritesView: View {
    var favorites: [PlayerItem]

    var body: some View {
        List(favorites) { player in
            VStack(alignment: .leading) {
                Text(player.name).font(.headline)
                Text("Rank: \(player.rank)")
            }
        }
        .navigationTitle("My Favorites")
    }
}
