//
//  UserDefault.swift
//  Super Money
//
//  Created by Yavorsky on 15.09.2022.
//

import Foundation

extension UserDefaults{
	
	private enum UserDefaults: String {
		case hasOnboarded
	}
	var hasOnboarded: Bool {
		get {
			bool(forKey: UserDefaults.hasOnboarded.rawValue)
			
		}set{
			setValue(newValue, forKey: UserDefaults.hasOnboarded.rawValue)
			
		}
	}
	
}

