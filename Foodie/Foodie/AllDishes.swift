//
//  AllDishes.swift
//  Foodie
//
//  Created by atakan yetkin on 5.07.2024.
//

import Foundation

struct AllDishes: Decodable {
    let categories: [DishCategory]?
    let populars: [Dish]?
    let specials: [Dish]?
}
