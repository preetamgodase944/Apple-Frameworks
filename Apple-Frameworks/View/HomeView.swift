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
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTileView(framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .sheet(isPresented: $viewModel.isFrameworkSelected) {
            if let selectedFramework = viewModel.selectedFramework {
                FrameworkDetailView(isShown: $viewModel.isFrameworkSelected, framework: selectedFramework)
            }
        }
    }
}

#Preview {
    HomeView()
}
