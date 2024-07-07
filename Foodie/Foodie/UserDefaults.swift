//
//  UserDefaults.swift
//  Foodie
//
//  Created by atakan yetkin on 5.07.2024.
//

import Foundation

extension UserDefaults {
    private enum UserDefaultskeys: String {
        case hasOnboarded
    }
    
    var hasOnboarded: Bool {
        get {
            bool(forKey: UserDefaultskeys.hasOnboarded.rawValue)
        }
        set {
            setValue(newValue, forKey: UserDefaultskeys.hasOnboarded.rawValue)
        }
    }
}
