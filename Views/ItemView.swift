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
            
            Picker("Select View", selection: $selectedTab) {
                Text("Data").tag("Data")
                Text("Equipment").tag("Equipment")
            }
            .pickerStyle(.segmented)
            .padding()

            if selectedTab == "Data" {
                VStack {
                    Text("Wins: \(player.wins)")
                    Text("Losses: \(player.losses)")
                }
            } else {
                List(player.equipment, id: \.self) { item in
                    Text(item)
                }
            }
        }
        .padding()
        .navigationTitle(player.name)
    }
}
