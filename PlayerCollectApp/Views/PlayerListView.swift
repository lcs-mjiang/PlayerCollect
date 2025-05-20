//
//  LandingView.swift
//  PlayerCollect
//
//  Created by Michael on 2025/5/20.
//

import SwiftUI


struct LandingView: View {
    @State private var searchText = ""
    @State private var favoritePlayers: [PlayerItem] = []
    let allPlayers: [PlayerItem] = [
        PlayerItem(name: "Viktor Axelsen", country: "Denmark", rank: 1, wins: 300, losses: 50, equipment: ["Yonex Astrox 100ZZ"]),
        PlayerItem(name: "Kento Momota", country: "Japan", rank: 10, wins: 280, losses: 70, equipment: ["Yonex Astrox 99 Pro"]),
        PlayerItem(name: "Anthony Ginting", country: "Indonesia", rank: 5, wins: 260, losses: 65, equipment: ["Li-Ning Aeronaut 9000C"])
    ]
    var filteredPlayers: [PlayerItem] {
        if searchText.isEmpty {
            return allPlayers
        } else {
            return allPlayers.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    var body: some View {
        VStack {
            TextField("Search Players", text: $searchText)
                .textFieldStyle(.roundedBorder)
                .padding()
            List(filteredPlayers) { player in
                NavigationLink(destination: ItemView(player: player, favorites: $favoritePlayers)) {
                    VStack(alignment: .leading) {
                        Text(player.name).font(.headline)
                        Text("Country: \(player.country)").font(.subheadline)
                    }
                }
            }
            Spacer()
            NavigationLink("Favorites", destination: FavoritesView(favorites: favoritePlayers))
                .padding()
        }
        .navigationTitle("Badminton Stars")
    }
}

