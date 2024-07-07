//
//  DishCategory.swift
//  Foodie
//
//  Created by atakan yetkin on 2.07.2024.
//

import Foundation

struct DishCategory: Decodable {
    let id, name, image: String?
    
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "title"
        case image 
    }
}
