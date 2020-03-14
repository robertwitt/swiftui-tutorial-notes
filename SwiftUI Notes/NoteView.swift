//
//  NoteView.swift
//  SwiftUI Notes
//
//  Created by Witt, Robert on 14.03.20.
//  Copyright © 2020 Robert Witt. All rights reserved.
//

import SwiftUI

struct NoteView: View {
    @ObservedObject var note: Note
    
    var body: some View {
        VStack {
            TextField("Title", text: $note.title)
            TextView(text: $note.content).border(Color.gray, width: 1)
        }
        .navigationBarTitle(note.title)
        .padding()
    }
}

struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView(note: Note(title: "Lorem ipsum", content: "Lorem ipsum ..."))
    }
}
