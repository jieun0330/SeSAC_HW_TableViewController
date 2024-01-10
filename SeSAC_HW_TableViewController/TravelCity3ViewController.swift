//
//  TravelCity3ViewController.swift
//  SeSAC_HW_TableViewController
//
//  Created by 박지은 on 1/9/24.
//

import UIKit
import Kingfisher

enum domestic: String, CaseIterable {
    case all = "모두"
    case domestic = "국내"
    case overseas = "해외"
}

protocol XibRegisterable {
    var identifier: String { get set }
    func register(identifier: String)
}

class TravelCity3ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, XibRegisterable {
    
    //Mark: - XibRegisterable
    var identifier: String = "TravelCity3CollectionViewCell"
    func register(identifier: String) {
        let xib2 = UINib(nibName: identifier, bundle: nil)
        cityView.register(xib2, forCellWithReuseIdentifier: identifier)
    }
    
    @IBOutlet var cityView: UICollectionView!
    @IBOutlet var domesticSegment: UISegmentedControl!
    
    let travel = CityInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        register(identifier: identifier)
        configureCollectionView()
        setLayout()
    }
}

extension TravelCity3ViewController {
    
    func setupSegmentControl() {
        domesticSegment.removeAllSegments()
        domestic.allCases.enumerated().forEach{ (index, section) in domesticSegment.insertSegment(withTitle: section.rawValue, at: index, animated: false)}
        domesticSegment.selectedSegmentIndex = 0
    }
    
    func configureCollectionView() {
        cityView.delegate = self
        cityView.dataSource = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return travel.city.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TravelCity3CollectionViewCell", for: indexPath) as! TravelCity3CollectionViewCell
        
        cell.imageView.kf.setImage(with: URL(string: travel.city[indexPath.row].city_image))
        cell.titleLabel.text = "\(travel.city[indexPath.row].city_name) | \(travel.city[indexPath.row].city_english_name)"
        cell.cityLabel.text = travel.city[indexPath.row].city_explain
        
        return cell
    }
    
    func setLayout() {
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 24
        let cellWidth = UIScreen.main.bounds.width - (spacing * 3)
        
        layout.itemSize = CGSize(width: cellWidth / 2.5, height: cellWidth / 1.7)
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        cityView.collectionViewLayout = layout
    }
}
