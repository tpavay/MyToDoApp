//
//  ToDoItemRow.swift
//  MyToDoApp
//
//  Created by Tyler Pavay on 7/26/25.
//

import SwiftUI

struct ToDoItemRow: View {
    let item: ToDoItem

    var body: some View {
        HStack() {
            CircularCheckBoxView(isChecked: item.isCompleted)
            Text(item.name)
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    let item1 = ToDoItem(name: "Go for run", dueDate: Date(), isCompleted: true)
    let item2 = ToDoItem(name: "Do laundry", dueDate: Date(), isCompleted: false)
    VStack {
        ToDoItemRow(item: item1)
        ToDoItemRow(item: item2)
    }
    .padding(.horizontal)
}
