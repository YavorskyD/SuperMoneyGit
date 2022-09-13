//
//  UIview+Extension.swift
//  Super Money
//
//  Created by Yavorsky on 02.09.2022.
//

import Foundation
import UIKit
extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get{ return self.cornerRadius }
        set{
            self.layer.cornerRadius = newValue
        }
    }
    
}
