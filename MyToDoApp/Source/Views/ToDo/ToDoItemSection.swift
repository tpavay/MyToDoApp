//
//  ToDoItemSection.swift
//  MyToDoApp
//
//  Created by Tyler Pavay on 7/22/25.
//

import SwiftUI

struct ToDoItemSection: View {
    let name: String
    @State var items: [ToDoItem]

    var body: some View {
        Section(header: Text(name).font(.title).bold()) {
            ForEach(items) { toDoItem in
                ToDoItemRow(item: toDoItem)
            }.padding(.horizontal)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
    }
}

#Preview {
    let allItems: [ToDoItem] = [
        ToDoItem(name: "Workout", dueDate: Date(), isCompleted: false),
        ToDoItem(name: "Do the dishes", dueDate: Date(), isCompleted: false),
        ToDoItem(name: "Journal", dueDate: Date(), isCompleted: false),
        ToDoItem(name: "Run", dueDate: Date(), isCompleted: true),
        ToDoItem(name: "Do the laundry", dueDate: Date(), isCompleted: true)
    ]

    let completedItems: [ToDoItem] = [
        ToDoItem(name: "Run", dueDate: Date(), isCompleted: true),
        ToDoItem(name: "Do the laundry", dueDate: Date(), isCompleted: true)
    ]

    ToDoItemSection(name: "All Items", items: allItems)
    ToDoItemSection(name: "Completed", items: completedItems)
}
