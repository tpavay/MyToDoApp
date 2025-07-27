//
//  ListRowView.swift
//  MyToDoApp
//
//  Created by Tyler Pavay on 7/27/25.
//

import SwiftUI

struct ListRowView: View {
    let title: String

    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text("This is the first item")
            Spacer()
        }
    }
}

#Preview {
    ListRowView(title: "This is teh first item")
}
