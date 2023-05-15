//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by KAARTHIKEYA K on 03/05/23.
//

import FirebaseFirestore
import Foundation

// ViewModel for the list of items view
class ToDoListViewViewModel : ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    
    
    /// Delete To Do list item
    /// - Parameter id: Item Id to delte 
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }

}
