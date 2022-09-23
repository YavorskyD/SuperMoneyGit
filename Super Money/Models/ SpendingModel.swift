//
//   SpendingModel.swift
//  Super Money
//
//  Created by Yavorsky on 21.09.2022.
//

import RealmSwift

class spending: Object {
	@objc dynamic var category = ""
	@objc dynamic var cost = 1
	@objc dynamic var date = NSDate()

}
