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
//            cell.likeButton.addTarget(self, action: #selector(likeButtonClicked), for: .touchUpInside)
            
            
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: ADTableViewCell.identifier, for: indexPath) as! ADTableViewCell
            
            cell.adTitleLabel.text = travelDetail.travel[indexPath.row].title
            
            return cell
        }
    }
    
//    @objc func likeButtonClicked() {
//        
//    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if travelDetail.travel[indexPath.row].ad == false {
            return 200
        } else {
            return 80
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let tourStoryboard = UIStoryboard(name: "TourScreen", bundle: nil)
        let tourView = tourStoryboard.instantiateViewController(withIdentifier: "TourScreen")
        
        let adStoryboard = UIStoryboard(name: "ADScreen", bundle: nil)
        let adView = adStoryboard.instantiateViewController(withIdentifier: "ADScreen")
        
        if travelDetail.travel[indexPath.row].ad == false {
            navigationController?.pushViewController(tourView, animated: true)
        } else {
            present(adView, animated: true)
        }
        
    }
    
}
