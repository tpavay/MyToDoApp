//
//  ToDoItem.swift
//  MyToDoApp
//
//  Created by Tyler Pavay on 7/22/25.
//

import Foundation

struct ToDoItem: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let dueDate: Date
    let isCompleted: Bool
}
