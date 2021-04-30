//
//  ItemModel.swift
//  TodoList
//
//  Created by Andre Almeida on 30/04/21.
//

import Foundation


//Immutable Struct

struct ItemModel : Identifiable{
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion () -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
