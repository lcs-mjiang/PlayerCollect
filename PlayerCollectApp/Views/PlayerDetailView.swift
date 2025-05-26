//
//  ItemView.swift
//  PlayerCollect
//
//  Created by Michael on 2025/5/20.
//

import SwiftUI

struct PlayerDetailView: View {
    let player: PlayerItem
    @State private var selectedTab = 0

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack(alignment: .top, spacing: 16) {
                Image(player.name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .shadow(radius: 5)

                VStack(alignment: .leading, spacing: 4) {
                    Text(player.name)
                        .font(.title)
                        .bold()
                    Text(player.country)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Text("World Rank: \(player.rank)")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                }

                Spacer()
            }

            Divider()

            // 中部：TabView（Stats / Equipment）
            Picker("Tab", selection: $selectedTab) {
                Text("Stats").tag(0)
                Text("Equipment").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.bottom, 8)

            if selectedTab == 0 {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Wins: \(player.wins)")
                    Text("Losses: \(player.losses)")
                }
                .font(.body)
            } else {
                VStack(alignment: .leading, spacing: 8) {
                    ForEach(player.equipment, id: \.self) { item in
                        Text("• \(item)")
                    }
                }
                .font(.body)
            }

            Spacer()
        }
        .padding()
        .navigationTitle("Player Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}
#Preview {
    PlayerDetailView(player: example1)
}
