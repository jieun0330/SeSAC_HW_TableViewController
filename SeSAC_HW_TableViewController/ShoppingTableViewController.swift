//
//  ShoppingTableViewController.swift
//  SeSAC_HW_TableViewController
//
//  Created by 박지은 on 1/5/24.
//

import UIKit

class ShoppingTableViewController: UITableViewController {
    
    @IBOutlet var shoppingTextField: UITextField!
    @IBOutlet var addButton: UIButton!
    
    var list = ["그립톡 구매하기", "사이다 구매", "아이패드 케이스 최저가 알아보기", "양말"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shoppingTextField.placeholder = "무엇을 구매하실 건가요?"
        // 아래 패딩주기
        // 섹션마다 간격 주기
        shoppingTextField.backgroundColor = .systemGray6
        shoppingTextField.layer.cornerRadius = 10
        shoppingTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 0))
        shoppingTextField.leftViewMode = .always
        addButton.setTitle("추가", for: .normal)
        addButton.backgroundColor = .systemGray5
        addButton.layer.cornerRadius = 5
        addButton.setTitleColor(.black, for: .normal)
    }
    
    @IBAction func itemAdded(_ sender: UIButton) {
        list.append(shoppingTextField.text!)
        tableView.reloadData()
    }
    
    // 다시 누르면 체크 안된 상태로 돌아가기
    @IBAction func checkButtonClicked(_ sender: UIButton) {
        sender.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
    }
    
    // 다시 누르면 체크 안된 상태로 돌아가기
    @IBAction func likeButtonClicked(_ sender: UIButton) {
        sender.setImage(UIImage(systemName: "star.fill"), for: .normal)
    }
    
    
    // 1. 셀 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return list.count
    }
    
    // 2. 셀 디자인 및 데이터 처리
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingTableViewCell", for: indexPath) as! ShoppingTableViewCell
        
        cell.backgroundColor = .systemGray6
        cell.checkButton.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
        cell.checkButton.tintColor = .black
        cell.checkButton.setImage(UIImage(systemName: "checkmark.square.fill"), for: [.highlighted, .selected])
        cell.shoppingListLabel.text = list[indexPath.row]
        cell.likeButton.setImage(UIImage(systemName: "star"), for: .normal)
        cell.likeButton.tintColor = .black
        cell.likeButton.setImage(UIImage(systemName: "star.fill"), for: .selected)
        
        return cell
    }
    
    // 3. 셀 높이
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 44
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            list.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
}
