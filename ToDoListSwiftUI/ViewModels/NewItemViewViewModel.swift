//
//  NewItemViewViewModel.swift
//  ToDoListSwiftUI
//
//  Created by Magdalena Popińska on 04/09/2024.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var dueDate: Date = Date()
    init() {}
    
    func save() {
        
    }
}
