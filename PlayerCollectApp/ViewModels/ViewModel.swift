//
//  ViewModel.swift
//  PlayerCollect
//
//  Created by Michael on 2025/5/23.
//

import Foundation
import Combine

// MARK: –– Models

struct PlayerResponse: Codable {
    let player: [Player]?
}

struct Player: Codable, Identifiable, Equatable {
    let idPlayer: String
    var id: String { idPlayer }
    
    let strPlayer: String
    let strNationality: String?
    let strTeam: String?
    let strSport: String?
    let strDescriptionEN: String?

    enum CodingKeys: String, CodingKey {
        case idPlayer, strPlayer, strNationality, strTeam, strSport, strDescriptionEN
    }
}

// MARK: –– ViewModel

@MainActor
class PlayerViewModel: ObservableObject {
    @Published private(set) var allPlayers: [Player]    = []
    @Published var filteredPlayers: [Player]            = []
    @Published var currentPlayer: Player?
    @Published private(set) var favoritePlayerIDs: Set<String> = []
    
    @Published var searchText: String = "" {
        didSet { filterPlayers() }
    }
    
    init() {
        let saved = UserDefaults.standard.stringArray(forKey: "favoritePlayerIDs") ?? []
        favoritePlayerIDs = Set(saved)
    }
    
    // MARK: –– Networking
    
    func fetchPlayers(searchQuery: String) async {
        let q = searchQuery.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        let urlString = "https://www.thesportsdb.com/api/v1/json/3/searchplayers.php?p=\(q)&t=Badminton"
        guard let url = URL(string: urlString) else {
            print("❌ Invalid URL:", urlString)
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let resp = try JSONDecoder().decode(PlayerResponse.self, from: data)
            let players = resp.player ?? []
            allPlayers = players
            filteredPlayers = players
            currentPlayer = players.first
        } catch {
            print("❌ Fetch error:", error)
        }
    }
    
    // MARK: –– Search
    
    private func filterPlayers() {
        guard !searchText.isEmpty else {
            filteredPlayers = allPlayers
            return
        }
        filteredPlayers = allPlayers.filter {
            $0.strPlayer.localizedCaseInsensitiveContains(searchText)
        }
    }
    
    // MARK: –– Favorites
    
    func toggleFavorite(_ player: Player) {
        if favoritePlayerIDs.contains(player.id) {
            favoritePlayerIDs.remove(player.id)
        } else {
            favoritePlayerIDs.insert(player.id)
        }
        saveFavorites()
    }
    
    func isFavorite(_ player: Player) -> Bool {
        favoritePlayerIDs.contains(player.id)
    }
    
    private func saveFavorites() {
        UserDefaults.standard.set(Array(favoritePlayerIDs), forKey: "favoritePlayerIDs")
    }
}
