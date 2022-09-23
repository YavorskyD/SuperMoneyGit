//
//  HomeViewController.swift
//  Super Money
//
//  Created by Yavorsky on 07.09.2022.
//

import UIKit
import RealmSwift

class HomeViewController: UIViewController {
	let realm = try! Realm()
	
	@IBOutlet weak var cashLabel: UILabel!
	var startTyping = false
	
	@IBOutlet weak var walletBtn: UIButton!
	@IBOutlet weak var changePlusMinus: UIButton!
	var numberLabel: Double = 0
	var cashValue = ""
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	@IBAction func digits(_ sender: UIButton!) {
		
		let number = String(sender.tag)
		if number == "0" && cashLabel.text == "0" {
			startTyping = false
		} else {
			if startTyping {
				if cashLabel.text!.count < 15 {
					cashLabel.text = cashLabel.text! + number }
				
				startTyping = true
		} else {
			cashLabel.text = number
			startTyping = true
		}
		}
		numberLabel = Double(cashLabel.text!)!
	}

	@IBAction func dotBtn(_ sender: UIButton) {
		

	}
	@IBAction func deleteBtn(_ sender: UIButton) {
		_ = String(sender.tag)
		cashLabel.text = "0"
		startTyping = false
	}
	
	@IBAction func nextBtn(_ sender: UIButton) {
		let categorysExpenses = storyboard?.instantiateViewController(withIdentifier: "CategoryExpensesViewController")
		navigationController?.pushViewController(categorysExpenses!, animated: true)
		cashValue = String(sender.tag)
		print(cashValue)
		
		let value = spending (value: ["\(categorysExpenses)", cashValue])
		try! realm.write {
			realm.add(value)
		}
	}
	
	@IBAction func changePlusMinus(_ sender: UIButton) {
//		let numberPM = String(sender.tag)
//		var number = String(cashlabel.text!)
//		number = "-" + number!
//		cashLabel.text = number
//

	}

	@IBAction func walletAction(_ sender: UIButton) {
	}
	
}

		
		
		
