//
//  TravelCityCollectionViewController.swift
//  SeSAC_HW_TableViewController
//
//  Created by 박지은 on 1/9/24.
//

import UIKit
import Kingfisher

private let reuseIdentifier = "Cell"

class TravelCityCollectionViewController: UICollectionViewController, ReusableProtocol {
    
    let travel = CityInfo.city

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 24
        let cellWidth = UIScreen.main.bounds.width - (spacing * 3)
        
        layout.itemSize = CGSize(width: cellWidth / 2, height: cellWidth / 1.6)
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        
        collectionView.collectionViewLayout = layout
    }
    
    // 1. 셀 갯수
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return travel.count
    }
    
    // 2. 셀 디자인 및 데이터 처리
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TravelCityCollectionViewCell", for: indexPath) as! TravelCityCollectionViewCell
        
        cell.imageView.kf.setImage(with: URL(string: travel[indexPath.row].city_image))
        cell.titleLabel.text = "\(travel[indexPath.row].city_name) | \(travel[indexPath.row].city_english_name)"
        cell.cityLabel.text = travel[indexPath.row].city_explain
        
        return cell
    }
    
}
