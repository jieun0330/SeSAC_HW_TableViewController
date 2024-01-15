//
//  TravelMagazineTableViewController.swift
//  SeSAC_HW_TableViewController
//
//  Created by 박지은 on 1/8/24.
//

import UIKit
import Kingfisher

class TravelMagazineTableViewController: UITableViewController {
    
    let mag = MagazineInfo.magazine
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Mark: - cell 사이 separator 없애기
        tableView.separatorStyle = .none
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
ㄴㄷㄴ
        let vc = storyboard?.instantiateViewController(withIdentifier: "MagazineDetailViewController") as! MagazineDetailViewController
        
        vc.urlString = mag[indexPath.row].link
        navigationController?.pushViewController(vc, animated: true)
    }
    
    // 1. 셀 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mag.count
    }
    
    // 2. 셀 디자인 및 데이터 처리
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TravelMagazineTableViewCell", for: indexPath) as! TravelMagazineTableViewCell
        
        //Mark: - 이미지
        cell.travelImageView.kf.setImage(with: URL(string: mag[indexPath.row].photo_image))
        cell.travelImageView.contentMode = .scaleAspectFill
        cell.travelImageView.layer.cornerRadius = 16
        //Mark: - 타이틀
        cell.titleLabel.text = mag[indexPath.row].title
        cell.titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        cell.titleLabel.numberOfLines = 2
        //Mark: - 콘텐츠
        cell.contentLabel.text = mag[indexPath.row].subtitle
        cell.contentLabel.textColor = .gray
        cell.contentLabel.font = UIFont.boldSystemFont(ofSize: 12)
        //Mark: - 날짜
        //Mark: - 하나만 가져다 쓰면 되는데, 여기다가 쓰면 100개의 칸을 만들게 되는 과정임
        //Mark: - -> cell에 옮길 수 있음
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyMMdd"
        let convertDate = dateFormatter.date(from: mag[indexPath.row].date)
        
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
