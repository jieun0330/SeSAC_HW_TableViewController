//
//  DetailViewController.swift
//  SeSAC_HW_TableViewController
//
//  Created by 박지은 on 2/7/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet var detailLabel: UILabel!
    var detail: String = "전달받을 공간"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailLabel.text = detail
    }
}
