//
//  User.swift
//  Navigation
//
//  Created by Улугбек Хайтметов on 25.07.2024.
//

import Foundation
import UIKit

class User: UIView {
    var login: String = "UlaXayt"
    var fullName: String = "UlaXayt"
    var status: String = "Single"
    var image: UIImage = {
        let image = UIImage(named: "lebedev")
        return image ?? UIImage()
    }()
    
}
