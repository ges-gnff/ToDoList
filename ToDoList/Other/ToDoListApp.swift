//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Евгений Гончаров on 21.08.2023.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
