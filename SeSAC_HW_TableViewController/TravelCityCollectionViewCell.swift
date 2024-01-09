//
//  TravelCityCollectionViewCell.swift
//  SeSAC_HW_TableViewController
//
//  Created by 박지은 on 1/9/24.
//

import UIKit

class TravelCityCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = false
        imageView.layer.cornerRadius = imageView.frame.height / 2
        imageView.clipsToBounds = true
        
        titleLabel.font = UIFont.boldSystemFont(ofSize: 16)
        
        cityLabel.font = UIFont.boldSystemFont(ofSize: 12)
        cityLabel.textColor = .systemGray3
        cityLabel.numberOfLines = 2
        cityLabel.textAlignment = .center
        
    }
    
    
}
