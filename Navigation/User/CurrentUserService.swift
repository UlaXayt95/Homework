//
//  CurrentUserService.swift
//  Navigation
//
//  Created by Улугбек Хайтметов on 25.07.2024.
//

import Foundation
import UIKit

class CurrentUserService: UserService {
    func userService(_ login: @escaping (User?) -> ()) {
        let login = User()
        login.login = "UlaXayt"
    }
    
    
    
}

