//
//  NewItemViewViewModel.swift
//  ToDoListSwiftUI
//
//  Created by Magdalena Popińska on 04/09/2024.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var dueDate: Date = Date()
    @Published var showAlert: Bool =  false
    init() {}
    
    func save() {
        guard canSave() else {
            return
        }
        
        guard let userId = Auth.auth().currentUser?.uid else {
            return
        }
        
        let newId = UUID().uuidString
        let newItem = ToDoListItem(id: newId,
                                   title: title,
                                   dueDate: dueDate.timeIntervalSince1970,
                                   createDate: Date().timeIntervalSince1970,
                                   isDone: false)
        
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(newId)
            .setData(newItem.asDictionary())
    }
    
    func canSave() -> Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        // 24 hours, is greater than yesturday
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        return true
    }
}
