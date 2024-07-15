//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Preetam Godase on 15/07/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @Binding var isShown: Bool
    @State var isSafariShown: Bool = false
    
    let framework: Framework
    
    var body: some View {
        VStack {
//            HStack {
//                Spacer()
//                Button {
//                    isShown = false
//                } label: {
//                    Image(systemName: "multiply")
//                        .foregroundStyle(Color(.label))
//                        .imageScale(.large)
//                        .frame(width: 44,height: 44)
//                }
//                .padding()
//            }
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
    FrameworkDetailView(isShown: .constant(true), framework: MockData.sampleFramework)
}
