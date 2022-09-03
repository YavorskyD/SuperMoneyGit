//
//  OnboardingCollectionViewCell.swift
//  Super Money
//
//  Created by Yavorsky on 02.09.2022.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var slideimageview: UIImageView!
    @IBOutlet weak var slideTitleLbl: UILabel!
    @IBOutlet weak var slideTitleDiscription: UILabel!
    func sutup (_ slide: OnboardingSlide){
        slideimageview.image = slide.image
        slideTitleLbl.text = slide.title
        slideTitleDiscription.text = slide.discription
    }
}
