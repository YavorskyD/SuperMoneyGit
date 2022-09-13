//
//  HomeViewController.swift
//  Super Money
//
//  Created by Yavorsky on 07.09.2022.
//

import UIKit

class HomeViewController: UIViewController {

	@IBOutlet weak var cashLabel: UILabel!
	var startTyping = false
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	@IBAction func digits(_ sender: UIButton) {
		
		let number = String(sender.tag)
		if startTyping {
			if cashLabel.text!.count < 16 {
				cashLabel.text = cashLabel.text! + number }
		} else {
			cashLabel.text = number
			startTyping = true
		}
	}
	
	@IBAction func deleteBtn(_ sender: UIButton) {
		cashLabel.text = "0"
		startTyping = false
	}
	
}


		
	
		
	
	

