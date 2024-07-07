//
//  Order.swift
//  Foodie
//
//  Created by atakan yetkin on 4.07.2024.
//

import Foundation

struct Order: Decodable {
    let id: String?
    let name: String?
    let dish: Dish?
}
