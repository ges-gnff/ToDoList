//
//  User.swift
//  ToDoList
//
//  Created by Евгений Гончаров on 21.08.2023.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
