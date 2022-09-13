//
//  OnboardingViewController.swift
//  Super Money
//
//  Created by Yavorsky on 02.09.2022.
//

import UIKit

class OnboardingViewController: UIViewController {
	
	let storage = UserDefaults()
	
	@IBOutlet weak var collectionView: UICollectionView!
	
	@IBOutlet weak var nextButton: UIButton!
	
	
	@IBOutlet weak var pageControl: UIPageControl!
	
	var slides: [ OnboardingSlide ] = []
	var currentPage = 0 {
		
		didSet {
			pageControl.currentPage = currentPage
			
			if currentPage == slides.count - 1 {
				nextButton.setTitle( "Let's Go", for: .normal)
				
			}else{
				
				nextButton.setTitle( "Next", for: .normal)
			}
		}
		
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		slides = [
			
			OnboardingSlide(title: "Simple and clear interface" , discription: "Add expenses in 2 clicks", image: #imageLiteral(resourceName: "1 slides") ),
			OnboardingSlide(title: "Your Finance on the full control", discription: "All expenses are divided into categories to make it easier to record and count them", image: #imageLiteral(resourceName: "2 slides")),
			OnboardingSlide(title: "Congratulation!", discription: "Today", image: #imageLiteral(resourceName: "3 slides"))
		]
		pageControl.numberOfPages = slides.count
		
	}
	
	@IBAction func nextButtonclicked(_ sender: UIButton) {
		if currentPage == slides.count - 1 {
			let controller = storyboard?.instantiateViewController(withIdentifier: "HomeNC") as! UINavigationController
			controller.modalPresentationStyle = .fullScreen
			controller.modalTransitionStyle = .flipHorizontal
			present(controller,animated: true, completion: nil)
		}else{
			currentPage += 1
			
			let indexPath = IndexPath(item: currentPage, section: 0)
			collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
			
		}
	}
}
extension OnboardingViewController:
	UICollectionViewDelegate,
	UICollectionViewDataSource,
	UICollectionViewDelegateFlowLayout{
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return slides.count
	}
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier:OnboardingCollectionViewCell.identifier, for: indexPath) as!OnboardingCollectionViewCell
		cell.sutup(slides[indexPath.row])
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize (width: collectionView.frame.width, height: collectionView.frame.height)
	}
	func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
		let with = scrollView.frame.width
		currentPage = Int(scrollView.contentOffset.x / with)
		
		
	}
}


// MARK: - TODO Использовать для отображения онбординга только при первом запуске
/*
 let storage = UserDefaults()
 storage.set(true, forKey: "isNotFirstStart")
 let isNotFirstStart: Bool = storage.bool(forKey: "isNotFirstStart")
 */
