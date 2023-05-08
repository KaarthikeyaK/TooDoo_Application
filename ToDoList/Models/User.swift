//
//  User.swift
//  ToDoList
//
//  Created by KAARTHIKEYA K on 03/05/23.
//

import Foundation

struct User : Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
