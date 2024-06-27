//
//  inProfile.swift
//  Navigation
//
//  Created by Улугбек Хайтметов on 19.06.2024.
//

import Foundation

struct Profile {
    let photo: String
}

extension Profile {
    static func make() -> [Profile]{[
        Profile(photo: "1"),
        Profile(photo: "2"),
        Profile(photo: "3"),
        Profile(photo: "4")
    ]}
}
