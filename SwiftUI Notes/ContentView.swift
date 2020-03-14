//
//  ContentView.swift
//  SwiftUI Notes
//
//  Created by Witt, Robert on 14.03.20.
//  Copyright © 2020 Robert Witt. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(NotesManager.shared.notes) { note in
            NoteCell(note: note)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct NoteCell: View {
    var note: Note
    
    var body: some View {
        HStack {
            Text(note.title)
            if note.isFavorite {
                Spacer()
                Image(systemName: "star.fill")
            }
        }
    }
}
