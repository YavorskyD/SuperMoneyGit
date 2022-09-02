//
//  OnboardingViewController.swift
//  Super Money
//
//  Created by Yavorsky on 02.09.2022.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides: [ OnboardingSlide ] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  

}
