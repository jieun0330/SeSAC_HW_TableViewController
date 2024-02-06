//
//  ShoppingTableViewCell.swift
//  SeSAC_HW_TableViewController
//
//  Created by 박지은 on 1/5/24.
//

import UIKit

class ShoppingTableViewCell: UITableViewCell, ReusableProtocol {
    
    @IBOutlet var view: UIView!
    @IBOutlet var checkButton: UIButton!
    @IBOutlet var shoppingListLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 4, left: 0, bottom: 4, right: 0))
    }
}

