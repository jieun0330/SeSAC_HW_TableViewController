//
//  TravelCity2CollectionViewCell.swift
//  SeSAC_HW_TableViewController
//
//  Created by 박지은 on 1/9/24.
//

import UIKit

class TravelCity2CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = false
        imageView.layer.cornerRadius = imageView.frame.height / 3.7
//        print(imageView.frame.height) // 동그라미 만드는 과정을 숫자를 다 찍어봐야되는건가?.?
        imageView.clipsToBounds = true
        
        titleLabel.font = UIFont.boldSystemFont(ofSize: 16)
        titleLabel.textAlignment = .center
        
        cityLabel.font = UIFont.boldSystemFont(ofSize: 12)
        cityLabel.textColor = .systemGray3
        cityLabel.numberOfLines = 2
        cityLabel.textAlignment = .center
//        
    }

}
