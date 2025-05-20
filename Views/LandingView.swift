//
//  LandingView.swift
//  PlayerCollect
//
//  Created by Michael on 2025/5/20.
//

import SwiftUI


struct LandingView: View {
   @State private var searchText = ""
    var body: some View {
        VStack {
                    TextField("Search Players", text: $searchText)
                        .textFieldStyle(.roundedBorder)
                        .padding()
            Spacer()
                   }
        .navigationTitle("Badminton Stars")
           }
       }
