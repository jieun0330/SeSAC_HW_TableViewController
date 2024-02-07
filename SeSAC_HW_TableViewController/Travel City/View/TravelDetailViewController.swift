//
//  TravelDetailViewController.swift
//  SeSAC_HW_TableViewController
//
//  Created by 박지은 on 1/11/24.
//

import UIKit
import Kingfisher

class TravelDetailViewController: UIViewController, ReusableProtocol {
    
    @IBOutlet var travelDetailTableView: UITableView!
    
    let travelDetail = TravelInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
    }
    
    func configureView() {
        navigationItem.title = "도시 상세 정보"
        
        travelDetailTableView.delegate = self
        travelDetailTableView.dataSource = self
        
        let xib = UINib(nibName: DetailTableViewCell.identifier, bundle: nil)
        travelDetailTableView.register(xib, forCellReuseIdentifier: DetailTableViewCell.identifier)
        
        let xib2 = UINib(nibName: ADTableViewCell.identifier, bundle: nil)
        travelDetailTableView.register(xib2, forCellReuseIdentifier: ADTableViewCell.identifier)
    }
}

extension TravelDetailViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return travelDetail.travel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if travelDetail.travel[indexPath.row].ad == false {
            let cell = tableView.dequeueReusableCell(withIdentifier: DetailTableViewCell.identifier, for: indexPath) as! DetailTableViewCell
            
            cell.title.text = travelDetail.travel[indexPath.row].title
            cell.descriptionLabel.text = travelDetail.travel[indexPath.row].description
            cell.travelImage.kf.setImage(with: URL(string: travelDetail.travel[indexPath.row].travel_image ?? ""))
            
            // 별점 구현
            if let grade = travelDetail.travel[indexPath.row].grade {
                let intGrade = Int(grade)
                for item in 0...intGrade - 1 {
                    cell.stars[item].tintColor = .orange
                }
            }
            
            // 저장 갯수 구현
            let numberFormatter: NumberFormatter = NumberFormatter()
            numberFormatter.numberStyle = .decimal
            let result: String = numberFormatter.string(for: travelDetail.travel[indexPath.row].save)!
            cell.saveLabel.text = "저장 \(result)"
            
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: ADTableViewCell.identifier, for: indexPath) as! ADTableViewCell
            
            cell.adTitleLabel.text = travelDetail.travel[indexPath.row].title
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if travelDetail.travel[indexPath.row].ad == false {
            return 200
        } else {
            return 80
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailStoryboard = UIStoryboard(name: "DetailScreen", bundle: nil)
        let detailView = detailStoryboard.instantiateViewController(withIdentifier: "DetailScreen") as! DetailViewController
        
        if travelDetail.travel[indexPath.row].ad == false {
            detailView.navigationItem.title = "관광지 화면"
            detailView.detail = "관광지 화면"
            navigationController?.pushViewController(detailView, animated: true)
        } else {
            detailView.navigationItem.title = "광고 화면"
            detailView.detail = "광고 화면"
            navigationController?.pushViewController(detailView, animated: true)
        }
    }
}
