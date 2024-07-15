//
//  Home.swift
//  Apple-Frameworks
//
//  Created by Preetam Godase on 15/07/24.
//

import SwiftUI

struct Home: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(),
        GridItem()
    ]
    var body: some View {
        NavigationStack {
            LazyVGrid(columns: columns) {
                ForEach(MockData.frameworks) { framework in
                    FrameworkTileView()
                }
            }
        }
    }
}

#Preview {
    Home()
}
