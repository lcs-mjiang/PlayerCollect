//
//  ItemView.swift
//  PlayerCollect
//
//  Created by Michael on 2025/5/20.
//

import SwiftUI

struct PlayerDetailView: View {
    let player: PlayerItem
    
    var body: some View {
        VStack {
            Text(player.name)
        }
    }
    
}

#Preview {
    PlayerDetailView(player: example1)
}
