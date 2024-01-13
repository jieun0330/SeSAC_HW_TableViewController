//
//  SettingTableViewController.swift
//  SeSAC_HW_TableViewController
//
//  Created by 박지은 on 1/5/24.
//

import UIKit

enum Setting: Int, CaseIterable {
    case total
    case personal
    case others
    case qna
    
    var title: String {
        switch self {
        case .total:
            return "전체 설정"
        case .personal:
            return "개인 설정"
        case .others:
            return "기타"
        case .qna:
            return "Q&A"
        }
    }
    
    var cellData: [String] {
        switch self {
        case .total:
            return ["공지사항", "실험실", "버전 정보"]
        case .personal:
            return ["개인/보안", "알림", "채팅", "멀티 프로필"]
        case .others:
            return ["도움말"]
        case .qna:
            return ["문의하기"]
        }
    }
}

class SettingTableViewController: UITableViewController {
    
    let entireSet = ["공지사항", "실험실", "버전 정보"]
    let personalSet = ["개인/보안", "알림", "채팅", "멀티프로필"]
    let etc = ["고객센터/도움말"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//Mark: - section의 개수
    override func numberOfSections(in tableView: UITableView) -> Int {
        //Mark: - section의 개수는 enum case의 개수
        return Setting.allCases.count
    }
        
    // 각 section의 cell 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Setting.allCases[section].cellData.count
    }

    // cell 구성
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableViewCell")!
        
        cell.textLabel?.text = Setting.allCases[indexPath.section].cellData[indexPath.row]
        
        return cell
    }
    
    // 3. 셀 높이
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 44
    }
    
    // section의 헤더
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        Setting.allCases[section].title
    }
}
