//
//  NotesManager.swift
//  SwiftUI Notes
//
//  Created by Witt, Robert on 14.03.20.
//  Copyright © 2020 Robert Witt. All rights reserved.
//

import Foundation

class NotesManager {
    static let shared = NotesManager()
    var notes = [Note]()
    
    private init() {}
}
