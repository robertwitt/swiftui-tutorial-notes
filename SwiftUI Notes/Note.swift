//
//  Note.swift
//  SwiftUI Notes
//
//  Created by Witt, Robert on 14.03.20.
//  Copyright © 2020 Robert Witt. All rights reserved.
//

import Foundation

class Note {
    var title: String
    var content: String
    var isFavorite: Bool
    
    init(title: String, content: String, isFavorite: Bool) {
        self.title = title
        self.content = content
        self.isFavorite = isFavorite
    }
}
