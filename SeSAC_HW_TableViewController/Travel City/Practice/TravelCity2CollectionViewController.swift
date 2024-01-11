//
//  TravelCityCollectionViewController2.swift
//  SeSAC_HW_TableViewController
//
//  Created by 박지은 on 1/9/24.
//

import UIKit
import Kingfisher

private let reuseIdentifier = "Cell"

class TravelCity2CollectionViewController: UICollectionViewController {
    
    let travel = CityInfo()

    override func viewDidLoad() {
        super.viewDidLoad()

        let xib = UINib(nibName: "TravelCity2CollectionViewCell", bundle: nil)
        collectionView.register(xib, forCellWithReuseIdentifier: "TravelCity2CollectionViewCell")
        
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 24
        let cellWidth = UIScreen.main.bounds.width - (spacing * 3)
        
        layout.itemSize = CGSize(width: cellWidth / 2, height: cellWidth / 1.6)
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        
        collectionView.collectionViewLayout = layout
        
    }
    
    // 1. 셀 높이
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return travel.city.count
    }
    
    // 2. 셀 디자인 및 데이터 처리
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TravelCity2CollectionViewCell", for: indexPath) as! TravelCity2CollectionViewCell
        
        cell.imageView.kf.setImage(with: URL(string: travel.city[indexPath.row].city_image))
        cell.titleLabel.text = "\(travel.city[indexPath.row].city_name) | \(travel.city[indexPath.row].city_english_name)"
        cell.cityLabel.text = travel.city[indexPath.row].city_explain
        
        return cell
    }
}
