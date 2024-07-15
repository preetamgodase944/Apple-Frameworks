//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Preetam Godase on 15/07/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "multiply")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44,height: 44)
                }
                .padding()
            }
            Spacer()
            FrameworkTileView(MockData.sampleFramework)
            Text(MockData.sampleFramework.description)
                .font(.body)
                .padding()
            Spacer()
            FrameworkButtonView()
        }
    }
}

#Preview {
    FrameworkDetailView()
}
