//
//  SettingTableViewController.swift
//  SeSAC_HW_TableViewController
//
//  Created by 박지은 on 1/5/24.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    // 다른데서 쓸일이 없다면 안에다가 넣을 수 있다
    enum Setting: String, CaseIterable {
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
// section의 개수
    override func numberOfSections(in tableView: UITableView) -> Int {
        // ection의 개수는 enum case의 개수
        return Setting.allCases.count
    }
        
    // 각 section의 cell 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Setting.allCases -> 4
        // Setting.allCases[section].cellData
        // Setting.allCases[0] -> total
        // Setting.allCases[0].cellData -> 공지사항, 실험실, 버전 정보
        // Setting.allCases[0].cellData.count -> 3개
        // Setting.allCases[1].cellData -> 개인/보안, 알림, 채팅, 멀티 프로필 -> 4개
        // 각 셀마다의 갯수를 설정할 수 있다
        Setting.allCases[section].cellData.count
    }

    // cell 구성
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableViewCell")!
        cell.textLabel?.text = Setting.allCases[indexPath.section].cellData[indexPath.row]
        // indexPath -> [0,0] [0,1] [0,2], [1,0] [1,1] [1,2] [1,3] ...
        // indexPath.section -> 0,0,0 1,1,1,1 ...
        // Setting.allCases[indexPath.section]
        // Setting.allCases[0].cellData -> 공지사항, 실험실, 버전 정보
        // Setting.allCases[0].cellData[indexPath.row]
        // 그럼 각 section에 있는 각 cell의 이름을 따서 올 수 있다
        
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
