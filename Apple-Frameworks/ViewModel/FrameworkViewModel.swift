//
//  FrameworkViewModel.swift
//  Apple-Frameworks
//
//  Created by Preetam Godase on 15/07/24.
//

import Foundation

final class FrameworkViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isFrameworkSelected = true
        }
    }
    
    @Published var isFrameworkSelected: Bool = false
}
