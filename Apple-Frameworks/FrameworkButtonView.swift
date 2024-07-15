//
//  FrameworkButtonView.swift
//  Apple-Frameworks
//
//  Created by Preetam Godase on 15/07/24.
//

import SwiftUI

struct FrameworkButtonView: View {
    var body: some View {
        Button {
            
        } label: {
            Text("Learn More")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .frame(width: 280,height: 50)
                .background(.red)
                .clipShape(.rect(cornerRadius: 10))
        }
    }
}

#Preview {
    FrameworkButtonView()
}
