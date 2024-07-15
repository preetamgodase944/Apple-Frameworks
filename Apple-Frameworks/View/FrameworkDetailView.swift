//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Preetam Godase on 15/07/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @Binding var isShown: Bool
    
    let framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isShown = false
                } label: {
                    Image(systemName: "multiply")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44,height: 44)
                }
                .padding()
            }
            Spacer()
            FrameworkTileView(framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            FrameworkButtonView()
        }
    }
}

#Preview {
    FrameworkDetailView(isShown: .constant(true), framework: MockData.sampleFramework)
}
