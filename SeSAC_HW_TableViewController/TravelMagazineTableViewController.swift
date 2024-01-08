//
//  TravelMagazineTableViewController.swift
//  SeSAC_HW_TableViewController
//
//  Created by 박지은 on 1/8/24.
//

import UIKit
import Kingfisher

class TravelMagazineTableViewController: UITableViewController {
    
    let mag = MagazineInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Mark: - cell 사이 separator 없애기
        tableView.separatorStyle = .none
        
    }
    
    // 1. 셀 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mag.magazine.count
    }
    
    // 2. 셀 디자인 및 데이터 처리
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TravelMagazineTableViewCell", for: indexPath) as! TravelMagazineTableViewCell
        
        //Mark: - 이미지
        cell.travelImageView.kf.setImage(with: URL(string: mag.magazine[indexPath.row].photo_image))
        cell.travelImageView.contentMode = .scaleAspectFill
        cell.travelImageView.layer.cornerRadius = 16
        //Mark: - 타이틀
        cell.titleLabel.text = mag.magazine[indexPath.row].title
        cell.titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        cell.titleLabel.numberOfLines = 2
        //Mark: - 콘텐츠
        cell.contentLabel.text = mag.magazine[indexPath.row].subtitle
        cell.contentLabel.textColor = .gray
        cell.contentLabel.font = UIFont.boldSystemFont(ofSize: 12)
        //Mark: - 날짜
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyMMdd"
        let convertDate = dateFormatter.date(from: mag.magazine[indexPath.row].date)
        
        let myDateFormatter = DateFormatter()
        myDateFormatter.dateFormat = "yy년 MM월 dd일"
        let convertStr = myDateFormatter.string(from: convertDate!)
        
        cell.dateLabel.text = convertStr
        
        cell.dateLabel.textColor = .gray
        cell.dateLabel.font = UIFont.systemFont(ofSize: 12)
        //Mark: - cell 클릭 이벤트 색상 없애기
        cell.selectionStyle = .none
        
        return cell
    }
    
    // 3. 셀 높이
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 420
    }
}
