//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by KAARTHIKEYA K on 03/05/23.
//

import Foundation

class RegisterViewViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
}
