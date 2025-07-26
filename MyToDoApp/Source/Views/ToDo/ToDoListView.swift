//
//  ToDoListView.swift
//  MyToDoApp
//
//  Created by Tyler Pavay on 7/22/25.
//

import SwiftUI



struct ToDoListView: View {
    @State var items: [ToDoItem]

    var body: some View {
        ToDoItemSection(name: "To Do Items", items: items.filter {!$0.isCompleted})
        ToDoItemSection(name: "Completed Items", items: items.filter {$0.isCompleted})
    }
}

#Preview {
    let items: [ToDoItem] = [
        ToDoItem(name: "Workout", dueDate: Date(), isCompleted: false),
        ToDoItem(name: "Do the dishes", dueDate: Date(), isCompleted: false),
        ToDoItem(name: "Journal", dueDate: Date(), isCompleted: false),
        ToDoItem(name: "Go for run", dueDate: Date(), isCompleted: true),
        ToDoItem(name: "Do Laundry", dueDate: Date(), isCompleted: true)
    ]

    ToDoListView(items: items)
}
