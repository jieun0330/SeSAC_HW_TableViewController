//
//  ShoppingTableViewCell.swift
//  SeSAC_HW_TableViewController
//
//  Created by 박지은 on 1/5/24.
//

import UIKit

class ShoppingTableViewCell: UITableViewCell {

    @IBOutlet var view: UIView!
    @IBOutlet var checkButton: UIButton!
    @IBOutlet var shoppingListLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    
    //Mark: - cell 사이 간격 주기
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 4, left: 0, bottom: 4, right: 0))
    }

    //Mark: - 체크 버튼
    // 다시 체크했을 때 돌아가기 기능
    @IBAction func checkButtonClicked(_ sender: UIButton) {
        sender.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
    }
    
    //Mark: - 찜 버튼
    // 다시 체크했을 때 돌아가기 기능
    @IBAction func likeButtonClicked(_ sender: UIButton) {
        sender.setImage(UIImage(systemName: "star.fill"), for: .normal)
    }
}
