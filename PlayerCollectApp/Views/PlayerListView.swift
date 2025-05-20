//
//  LandingView.swift
//  PlayerCollect
//
//  Created by Michael on 2025/5/20.
//

import SwiftUI


struct PlayerListView: View {
    
    // MARK: Stored properties
    @State private var searchText = ""
    @State private var favoritePlayers: [PlayerItem] = []
    let allPlayers: [PlayerItem] = [
        example1, example2, example3
    ]
    
    // MARK: Computed properties
    var filteredPlayers: [PlayerItem] {
        if searchText.isEmpty {
            return allPlayers
        } else {
            return allPlayers.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                List(filteredPlayers) { player in
                    NavigationLink {
                        PlayerDetailView(player: player)
                    } label: {
                        Text(player.name)
                    }

                }
                .searchable(text: $searchText)
                Spacer()
            }
            .navigationTitle("Badminton Stars")
        }
    }
}

#Preview {
    PlayerListView()
}
