//
//  UIViewController+Extension.swift
//  Foodie
//
//  Created by atakan yetkin on 4.07.2024.
//

import Foundation
import UIKit

extension UIViewController {
    
    static var identifier: String {
        return String(describing: self)
    }
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(identifier: identifier) as! Self
      
    }
}
