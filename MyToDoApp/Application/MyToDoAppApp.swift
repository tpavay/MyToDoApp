//
//  MyToDoAppApp.swift
//  MyToDoApp
//
//  Created by Tyler Pavay on 7/22/25.
//


import SwiftUI

@main
struct MyToDoAppApp: App {
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
        }
    }
}
