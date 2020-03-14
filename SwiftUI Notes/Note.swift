//
//  Note.swift
//  SwiftUI Notes
//
//  Created by Witt, Robert on 14.03.20.
//  Copyright © 2020 Robert Witt. All rights reserved.
//

import Foundation

class Note: Identifiable, ObservableObject {
    var id = UUID()
    @Published var title: String
    @Published var content: String
    @Published var isFavorite: Bool
    
    init(title: String = "", content: String = "", isFavorite: Bool = false) {
        self.title = title
        self.content = content
        self.isFavorite = isFavorite
    }
}
