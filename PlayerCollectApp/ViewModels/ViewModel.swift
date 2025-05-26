//
//  ViewModel.swift
//  PlayerCollect
//
//  Created by Michael on 2025/5/23.
//

import Foundation

@Observable
class PlayerViewModel {
    
    // MARK: - Data Properties
    var allPlayers: [Player] = []          // All fetched players
    var filteredPlayers: [Player] = []    // Players filtered by search
    var currentPlayer: Player?            // Currently selected player
    var favoritePlayers: [Player] = []    // Favorite players list
    
    var searchText: String = "" {
        didSet {
            filterPlayers()
        }
    }
    
    // MARK: - Network Call
    func fetchPlayers(searchQuery: String) async {
        let formattedQuery = searchQuery.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        let endpoint = "https://www.thesportsdb.com/api/v1/json/3/searchplayers.php?p=\(formattedQuery)&t=Badminton"
        
        guard let url = URL(string: endpoint) else {
            print("Invalid URL")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decoder = JSONDecoder()
            
            // TheSportsDB returns a wrapper object
            let response = try decoder.decode(PlayerResponse.self, from: data)
            
            DispatchQueue.main.async {
                self.allPlayers = response.player ?? []
                self.filteredPlayers = self.allPlayers
                self.currentPlayer = self.allPlayers.first
            }
            
        } catch {
            print("Error fetching players: \(error)")
        }
    }
    
    // MARK: - Search Filtering
    func filterPlayers() {
        if searchText.isEmpty {
            filteredPlayers = allPlayers
        } else {
            filteredPlayers = allPlayers.filter {
                $0.strPlayer.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    // MARK: - Favorites Management
    func toggleFavorite(player: player) {
        if let index = favoritePlayers.firstIndex(where: { $0.id == player.id }) {
            favoritePlayers.remove(at: index)
        } else {
            favoritePlayers.append(player)
        }
        // Add persistence here if needed (UserDefaults/CoreData)
    }
    
    func isFavorite(player: player) -> Bool {
        favoritePlayers.contains { $0.id == player.id }
    }
}

// MARK: - Data Models
struct playerResponse: Codable {
    let player: [player]?
}

struct player: Codable, Identifiable, Equatable {
    let id: String  // TheSportsDB uses String ID
    let strPlayer: String
    let strNationality: String?
    let strTeam: String?
    let strSport: String?
    let strDescriptionEN: String?
}
