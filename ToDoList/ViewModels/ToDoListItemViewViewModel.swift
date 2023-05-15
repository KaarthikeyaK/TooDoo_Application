//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by KAARTHIKEYA K on 03/05/23.
//

import FirebaseFirestore
import FirebaseAuth
import Foundation

// ViewModel for a single toDo list Item view each row in items list.
class ToDoListItemViewViewModel : ObservableObject {
    init(){
        
    }
    
    func toggleIsDone(item: ToDoListItem){
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }

}
