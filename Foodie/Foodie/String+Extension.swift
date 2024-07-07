//
//  String+Extension.swift
//  Foodie
//
//  Created by atakan yetkin on 2.07.2024.
//

import Foundation
extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
