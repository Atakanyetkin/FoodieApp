//
//  UIview+Extensions.swift
//  Foodie
//
//  Created by atakan yetkin on 1.07.2024.
//

import Foundation
import UIKit

extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get{return self.cornerRadius }
        set{
            self.layer.cornerRadius = newValue
        }
    }
    
}
