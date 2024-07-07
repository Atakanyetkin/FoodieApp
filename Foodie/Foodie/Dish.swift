//
//  Dish.swift
//  Foodie
//
//  Created by atakan yetkin on 2.07.2024.
//

import Foundation

struct Dish: Decodable {
    let id, name, description, image: String?
    let calories: Int?
    
    var formattedCalories: String {
        
        return "\(calories ?? 0) calories"
    }
    
}
