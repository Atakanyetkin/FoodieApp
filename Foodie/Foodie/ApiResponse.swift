//
//  ApiResponse.swift
//  Foodie
//
//  Created by atakan yetkin on 5.07.2024.
//

import Foundation

struct ApiResponse<T: Decodable>: Decodable {
    let status: Int
    let message: String?
    let data: T?
    let error: String?
    
}
