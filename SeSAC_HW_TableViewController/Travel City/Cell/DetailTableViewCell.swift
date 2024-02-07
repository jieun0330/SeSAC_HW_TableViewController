//
//  DetailTableViewCell.swift
//  SeSAC_HW_TableViewController
//
//  Created by 박지은 on 1/11/24.
//

import UIKit

class DetailTableViewCell: UITableViewCell, ReusableProtocol {
    
    @IBOutlet var title: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var travelImage: UIImageView!
    
    @IBOutlet var starStack: UIStackView!
    @IBOutlet var stars: [UIImageView]!
    
    @IBOutlet var saveLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        title.font = UIFont.boldSystemFont(ofSize: 16)
        
        descriptionLabel.font = UIFont.boldSystemFont(ofSize: 12)
        descriptionLabel.textColor = .systemGray
        
        travelImage.contentMode = .scaleAspectFill
        travelImage.layer.cornerRadius = 8
        
        starStack.axis = .horizontal
        starStack.distribution = .fillEqually
        starStack.spacing = 2
        
        for index in 0...4 {
            stars[index].image = UIImage(systemName: "star.fill")
            stars[index].tintColor = .lightGray
        }
        
        saveLabel.font = UIFont.systemFont(ofSize: 10)
        saveLabel.textColor = .systemGray2
        
        likeButton.setImage(UIImage(systemName: "heart"), for: .normal)
        likeButton.tintColor = .white
        likeButton.addTarget(self, action: #selector(likeButtonClicked), for: .touchUpInside)
    }
    
    @objc func likeButtonClicked(_ sender: UIButton) {
        sender.isSelected.toggle()
        
        if sender.isSelected {
            likeButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        } else {
            likeButton.setImage(UIImage(systemName: "heart"), for: .normal)
        }
    }
}
