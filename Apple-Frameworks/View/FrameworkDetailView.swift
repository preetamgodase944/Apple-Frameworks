//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Preetam Godase on 15/07/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @State var isSafariShown: Bool = false
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Spacer()
            FrameworkTileView(framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            FrameworkButtonView(isSafariDisplayed: $isSafariShown)
        }
        .fullScreenCover(isPresented: $isSafariShown) {
            if let url = URL(string: framework.urlString) {
                SafariView(url: url)
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
