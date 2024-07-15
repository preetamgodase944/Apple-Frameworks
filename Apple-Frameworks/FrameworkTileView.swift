//
//  FrameworkTileView.swift
//  Apple-Frameworks
//
//  Created by Preetam Godase on 15/07/24.
//

import SwiftUI

struct FrameworkTileView: View {
    var body: some View {
        VStack {
            Image("arkit")
                .resizable()
                .frame(width: 90,height: 90)
                .aspectRatio(contentMode: .fit)
            Text("ARKit")
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
    }
}

#Preview {
    FrameworkTileView()
}
