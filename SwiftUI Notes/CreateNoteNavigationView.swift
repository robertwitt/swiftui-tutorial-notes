//
//  CreateNoteNavigationView.swift
//  SwiftUI Notes
//
//  Created by Witt, Robert on 14.04.20.
//  Copyright © 2020 Robert Witt. All rights reserved.
//

import SwiftUI

struct CreateNoteNavigationView: View {
    @Binding var isPresented: Bool
    
    private let note = Note()
    
    var body: some View {
        NavigationView {
            NoteView(note: note)
                .navigationBarItems(
                    leading: DismissButton(presentsModalView: $isPresented),
                    trailing: DismissButton(presentsModalView: $isPresented, title: "Save") {
                        NotesManager.shared.notes.append(self.note)
                    }
                )
                .navigationBarTitle("Create new note")
        }
    }
}

struct DismissButton: View {
    @Binding var presentsModalView: Bool
    
    var title = "Cancel"
    
    var action: (() -> Void)?
    
    var body: some View {
        Button(action: {
            if let action = self.action {
                action()
            }
            self.presentsModalView = false
        }) {
            Text(title)
        }
    }
}

struct CreateNoteNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CreateNoteNavigationView(isPresented: .constant(true))
    }
}
