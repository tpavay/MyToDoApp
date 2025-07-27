//
//  AddView.swift
//  MyToDoApp
//
//  Created by Tyler Pavay on 7/27/25.
//

import SwiftUI

struct AddView: View {
    @State var name: String = ""

    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here", text: $name)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.systemGray4))
                    .cornerRadius(10)
                Button(action: {}) {
                    Text("Save".uppercased())
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(.accent)
                        .foregroundStyle(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
        .navigationTitle("Add an Item")
    }
}

#Preview {
    NavigationStack {
        AddView()
    }
}
