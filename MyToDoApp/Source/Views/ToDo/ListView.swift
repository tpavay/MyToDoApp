//
//  ListView.swift
//  MyToDoApp
//
//  Created by Tyler Pavay on 7/27/25.
//

import SwiftUI

struct ListView: View {

    @State var items: [String] = [
        "This is the first title.",
        "This is the second title",
        "Third"
    ]
    var body: some View {
        List {
            ForEach(items, id: \.self) {item  in
                ListRowView(title: item)
            }
        }
        .listStyle(.plain)
        .navigationTitle("Todo List 📝")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("Add", destination: AddView())
            }
        }
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}
