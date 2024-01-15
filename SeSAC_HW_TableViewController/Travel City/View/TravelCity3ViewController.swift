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

class TravelCity3ViewController: UIViewController {
    
    @IBOutlet var cityView: UICollectionView!
    @IBOutlet var citySearchBar: UISearchBar!
    @IBOutlet var domesticSegment: UISegmentedControl!
    
    let travel = CityInfo.city
    var list: [City] = CityInfo.city {
        didSet {
            cityView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSegmentControl()
        configureView()
        setLayout()
    }
}

extension TravelCity3ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        var filterData: [City] = []
        
        if searchBar.text == "" {
            list = travel
        } else {
            for item in travel {
                if item.city_english_name.contains(searchBar.text!) {
                    filterData.append(item)
                }
            }
            list = filterData
        }
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        var filterData: [City] = []
        
        if searchBar.text == "" {
            list = travel
        } else {
            for item in travel {
                if item.city_english_name.contains(searchBar.text!) {
                    filterData.append(item)
                }
            }
            list = filterData
        }
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.text = ""
        list = travel
    }
}

extension TravelCity3ViewController {
    
    func setupSegmentControl() {
        domesticSegment.removeAllSegments()
        domestic.allCases.enumerated().forEach{ (index, section) in domesticSegment.insertSegment(withTitle: section.rawValue, at: index, animated: false)}
        domesticSegment.selectedSegmentIndex = 0
    }
    
    func configureView() {
        cityView.delegate = self
        cityView.dataSource = self
        
        citySearchBar.delegate = self
        citySearchBar.showsCancelButton = true
        
        let xib = UINib(nibName: TravelCity3CollectionViewCell.identifier, bundle: nil)
        cityView.register(xib, forCellWithReuseIdentifier: TravelCity3CollectionViewCell.identifier)
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailSB = UIStoryboard(name: "Detail", bundle: nil)
        let detailVC = detailSB.instantiateViewController(identifier: TravelDetailViewController.identifier) as! TravelDetailViewController
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

extension TravelCity3ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TravelCity3CollectionViewCell.identifier, for: indexPath) as! TravelCity3CollectionViewCell
        
        cell.imageView.kf.setImage(with: URL(string: travel[indexPath.row].city_image))
        cell.titleLabel.text = "\(travel[indexPath.row].city_name) | \(travel[indexPath.row].city_english_name)"
        cell.cityLabel.text = travel[indexPath.row].city_explain
        
        return cell
    }
}
