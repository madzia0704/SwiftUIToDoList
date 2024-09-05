//
//  Users.swift
//  ToDoListSwiftUI
//
//  Created by Magdalena Popińska on 04/09/2024.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
