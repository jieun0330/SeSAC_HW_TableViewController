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

    //Mark: - 체크 버튼
    // 다시 체크했을 때 돌아가기 기능
//    @IBAction func checkButtonClicked(_ sender: UIButton) {
//        sender.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
//        shoppingListLabel.attributedText = shoppingListLabel.text?.strikeThrough()
//        shoppingListLabel.strik
//        shoppingList[sender.tag].list.strikeThrough()
//    }
    
    //Mark: - 찜 버튼
    // 다시 체크했을 때 돌아가기 기능
//    @IBAction func likeButtonClicked(_ sender: UIButton) {
//        sender.setImage(UIImage(systemName: "star.fill"), for: .normal)
//    }
}
 

//extension String {
//    func strikeThrough() -> NSAttributedString {
//        let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: self)
//        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSMakeRange(0, attributeString.length))
//        return attributeString
//    }
//}
