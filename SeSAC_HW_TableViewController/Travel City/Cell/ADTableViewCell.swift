//
//  ADTableViewCell.swift
//  SeSAC_HW_TableViewController
//
//  Created by 박지은 on 1/11/24.
//

import UIKit

class ADTableViewCell: UITableViewCell, ReusableProtocol {
    
    @IBOutlet var adUIView: UIView!
    @IBOutlet var adTitleLabel: UILabel!
    @IBOutlet var ad: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        adUIView.backgroundColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
        adUIView.layer.cornerRadius = 16
        
        adTitleLabel.textAlignment = .center
        adTitleLabel.font = UIFont.boldSystemFont(ofSize: 16)
        
        ad.backgroundColor = .white
        ad.layer.cornerRadius = 8
        ad.clipsToBounds = true
        ad.textAlignment = .center
        ad.font = UIFont.systemFont(ofSize: 16)
        
            
    }

    
}
