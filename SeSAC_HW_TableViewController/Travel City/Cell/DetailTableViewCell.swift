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
    @IBOutlet var starRate: UILabel!
    @IBOutlet var saveLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        title.font = UIFont.boldSystemFont(ofSize: 16)
        
        descriptionLabel.font = UIFont.boldSystemFont(ofSize: 12)
        descriptionLabel.textColor = .systemGray
        
        travelImage.contentMode = .scaleAspectFill
        travelImage.layer.cornerRadius = 8
        
        starRate.text = "별점"
        starRate.font = UIFont.systemFont(ofSize: 10)
        starRate.textColor = .systemGray2
        
        saveLabel.text = "저장"
        saveLabel.font = UIFont.systemFont(ofSize: 10)
        saveLabel.textColor = .systemGray2
        
        likeButton.setImage(UIImage(systemName: "heart"), for: .normal)
        likeButton.tintColor = .white
    }
}
