//
//  CheckBoxView.swift
//  MyToDoApp
//
//  Created by Tyler Pavay on 7/26/25.
//

import SwiftUI

struct CircularCheckBoxView: View {
    let checkedColor: Color
    @State var isChecked: Bool

    init(isChecked: Bool = false, checkedColor: Color = .accent) {
        self.isChecked = isChecked
        self.checkedColor = checkedColor
    }
    
    var body: some View {
        Circle()
            .overlay(
                Circle()
                    .frame(width: 25)
                    .foregroundStyle(isChecked ? checkedColor : Color(.systemBackground))
                    .overlay(
                        Image("CheckIcon")
                            .resizable()
                            .opacity(isChecked ? 1 : 0)
                    )
            )
            .frame(width: 27)
            .foregroundStyle(isChecked ? .clear : Color(.systemGray))
            .onTapGesture {
                isChecked.toggle()
            }
    }
}

#Preview {
    CircularCheckBoxView(isChecked: false, checkedColor: .accent)
    CircularCheckBoxView(isChecked: true, checkedColor: .accent)
}
