//
//  ShoppingTableViewController.swift
//  SeSAC_HW_TableViewController
//
//  Created by 박지은 on 1/5/24.
//

import UIKit
import SwiftUI

struct shopping {
    var list: String
    var check: Bool
    var like: Bool
}

class ShoppingTableViewController: UITableViewController {
    
    @IBOutlet var shoppingTextField: UITextField!
    @IBOutlet var addButton: UIButton!
    
    var shoppingList: [shopping] = [shopping(list: "그립톡 구매하기", check: false, like: false),
                                    shopping(list: "사이다 구매", check: false, like: false),
                                    shopping(list: "아이패드 최저가 케이스 알아보기", check: false, like: false),
                                    shopping(list: "양말 사기", check: false, like: false)]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textField(shoppingTextField)
        add(addButton)
        
        tableView.rowHeight = 80
    }
    
    //Mark: - TextField 디자인
    func textField(_ sender: UITextField) {
        sender.placeholder = "무엇을 구매하실 건가요?"
        sender.backgroundColor = .systemGray6
        sender.layer.cornerRadius = 10
        sender.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 0))
        sender.leftViewMode = .always
    }
    
    //Mark: - 쇼핑 리스트 추가 버튼 디자인
    func add(_ sender: UIButton) {
        sender.setTitle("추가", for: .normal)
        sender.backgroundColor = .systemGray5
        sender.layer.cornerRadius = 5
        sender.setTitleColor(.black, for: .normal)
    }
    
    //Mark: - 쇼핑 리스트 추가 버튼
    @IBAction func itemAdded(_ sender: UIButton) {
        shoppingList.append(shopping(list: shoppingTextField.text!, check: false, like: false))
        view.endEditing(true)
        tableView.reloadData()
    }
    
    //Mark: - cell 위 여백
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 24
    }
    
//    Mark: - 1. 셀 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingList.count
    }
    
    //Mark: - 2. 셀 디자인 및 데이터 처리
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingTableViewCell", for: indexPath) as! ShoppingTableViewCell
        let checkItem = !shoppingList[indexPath.row].check ? "checkmark.square" : "checkmark.square.fill"
        let likeItem = !shoppingList[indexPath.row].like ? "star" : "star.fill"
        cell.view.backgroundColor = .systemGray6
        cell.view.layer.cornerRadius = 16
        cell.checkButton.setImage(UIImage(systemName: checkItem), for: .normal)
        cell.checkButton.tag = indexPath.row
        cell.checkButton.tintColor = .black
        cell.checkButton.addTarget(self, action: #selector(checkButtonClicked), for: .touchUpInside)
        cell.shoppingListLabel.text = shoppingList[indexPath.row].list
        cell.likeButton.setImage(UIImage(systemName: likeItem), for: .normal)
        cell.likeButton.tag = indexPath.row
        cell.likeButton.tintColor = .black
        cell.likeButton.addTarget(self, action: #selector(likeButtonClicked), for: .touchUpInside)
        //Mark: - cell 클릭 이벤트 색상 없애기
        cell.selectionStyle = .none
        
        return cell
    }
    
    @objc func checkButtonClicked(_ sender: UIButton) {
        shoppingList[sender.tag].check.toggle()
        tableView.reloadRows(at: [IndexPath(row: sender.tag, section: 0)], with: .fade)
    }
    
    @objc func likeButtonClicked(_ sender: UIButton) {
        shoppingList[sender.tag].like.toggle()
        tableView.reloadRows(at: [IndexPath(row: sender.tag, section: 0)], with: .fade)
    }

    //Mark: - 셀 삭제 기능
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            shoppingList.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
}
