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

/*
 layoutSubviews
 진짜 난생 처음 보는 것 같은데
 
 ViewController에서 ViewDidLoad, ViewWillAppear가 존재하듯이
 awakeFromNib 뿐만 아니라 layoutSubViews도 있는데
 
 awakeFromNib은 -> 초기화 메소드는 아니지만 초기화가 끝난 '직후'에 실행되는 메소드이다
 layoutSubViews -> 레이아웃이 그려지고 나서의 정보들을 바탕으로 새로운 레이아웃 정보를 계산해서 '재배치'한다
 
 */
