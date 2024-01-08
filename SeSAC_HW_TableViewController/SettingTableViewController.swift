//
//  SettingTableViewController.swift
//  SeSAC_HW_TableViewController
//
//  Created by 박지은 on 1/5/24.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    let entireSet = ["공지사항", "실험실", "버전 정보"]
    let personalSet = ["개인/보안", "알림", "채팅", "멀티프로필"]
    let etc = ["고객센터/도움말"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // 섹션 개수
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    

    
    // 1. 셀 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 3
        } else if section == 1 {
            return 4
        } else {
            return 1
        }
    }
    
    // 2. 셀 디자인 및 데이터 처리
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableViewCell")!
        
        if indexPath.section == 0 {
            cell.textLabel?.text = entireSet[indexPath.row]
        } else if indexPath.section == 1 {
            cell.textLabel?.text = personalSet[indexPath.row]
        } else {
            cell.textLabel?.text = etc[indexPath.row]
        }
        
        return cell
    }
    
    // 3. 셀 높이
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 44
    }
    
    // 섹션 타이틀
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "전체 설정"
        } else if section == 1 {
            return "개인 설정"
        } else {
            return "기타"
        }
        
    }
}
