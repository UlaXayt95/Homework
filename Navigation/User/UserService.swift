//
//  UserService.swift
//  Navigation
//
//  Created by Улугбек Хайтметов on 25.07.2024.
//

import Foundation

protocol UserService {
    func userService(_ login: @escaping (User?) ->())
}
