//
//  HomeView.swift
//  Apple-Frameworks
//
//  Created by Preetam Godase on 15/07/24.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = FrameworkViewModel()
    
    let columns = [
        GridItem(.flexible()),
        GridItem(),
        GridItem()
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(value: framework) {
                        FrameworkTileView(framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
        }
        .tint(Color(.label))
    }
}

#Preview {
    HomeView()
}
