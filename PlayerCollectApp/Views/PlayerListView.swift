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
        example1, example2, example3, example4, example5, example6, example7, example8, example9, example10,
        example11, example12, example13, example14, example15, example16, example17, example18, example19, example20,
        example21, example22, example23, example24, example25, example26, example27, example28, example29, example30,
        example31, example32, example33, example34, example35, example36, example37, example38, example39, example40,
        example41, example42, example43, example44

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
