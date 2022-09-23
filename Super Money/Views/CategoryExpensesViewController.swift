//
//  CategoryExpensesViewController.swift
//  Super Money
//
//  Created by Yavorsky on 13.09.2022.
//

import UIKit

class CategoryExpensesViewController: UIViewController {
	var categoryName = ""

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
	@IBAction func backToHomePage(_ sender: UIButton) {
		let goToHomePage = storyboard?.instantiateViewController(withIdentifier: "HomeViewController")
		navigationController?.pushViewController(goToHomePage!, animated: true)
	}

	@IBAction func categoryPressed(_ sender: UIButton) {
		categoryName = sender.currentTitle!
		print(categoryName)
	}
	
	
}

