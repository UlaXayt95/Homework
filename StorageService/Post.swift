//
//  Post.swift
//  StorageService
//
//  Created by Улугбек Хайтметов on 27.06.2024.
//

import Foundation

public struct Post {
   public var author: String
   public var description: String
   public var image: String
   public var likes: String
   public var views: String
}


extension Post {
   public static func make() -> [Post] {[
        Post(author: "Superman", description: "Man of Steel", image: "superman", likes: "4556", views: "8855"),
        Post(author: "Naruto", description: "Hokage", image: "naruto", likes: "6473", views: "8696"),
        Post(author: "Kurasaki Ichigo", description: "Shinigami", image:"Ichigo", likes: "8696", views: "9000"),
        Post(author: "Monkey D. Luffy", description: "The Sun God", image:"luffy", likes: "6575", views: "7654")
    ]
    }
}
