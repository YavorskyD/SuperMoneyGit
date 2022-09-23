//
//  UIview+Extension.swift
//  Super Money
//
//  Created by Yavorsky on 02.09.2022.
//

import Foundation
import UIKit
import SwiftUI
extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get{ return self.cornerRadius }
        set{
            self.layer.cornerRadius = newValue
        }
    }
    
}
extension UIViewController{
	static var identifier: String {
		return String(describing: self)
	}
	static func instantiate() -> Self{
		let storyboard = UIStoryboard(name: "Main", bundle: nil)
		return storyboard.instantiateViewController(withIdentifier: identifier) as! Self
	}
}
