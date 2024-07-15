//
//  FrameworkButtonView.swift
//  Apple-Frameworks
//
//  Created by Preetam Godase on 15/07/24.
//

import SwiftUI

struct FrameworkButtonView: View {
    
    @Binding var isSafariDisplayed: Bool
    
    var body: some View {
        Button {
            isSafariDisplayed = true
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
    FrameworkButtonView(isSafariDisplayed: .constant(true))
}
