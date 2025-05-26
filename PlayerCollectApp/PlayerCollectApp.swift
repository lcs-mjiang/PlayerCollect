//
//  PlayerCollectApp.swift
//  PlayerCollect
//
//  Created by Michael on 2025/5/20.
//

import SwiftUI

@main
struct PlayerCollectApp: App {
    @StateObject private var viewModel = PlayerViewModel()
    
    var body: some Scene {
        WindowGroup {
            PlayerListView()
                .environmentObject(viewModel)
        }
    }
}

