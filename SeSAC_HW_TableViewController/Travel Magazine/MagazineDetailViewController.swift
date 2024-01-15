//
//  MagazineDetailViewController.swift
//  SeSAC_HW_TableViewController
//
//  Created by 박지은 on 1/15/24.
//

import UIKit
import WebKit

class MagazineDetailViewController: UIViewController {
    
    @IBOutlet var magazineDetailWebView: WKWebView!
    
    var urlString: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            magazineDetailWebView.load(request)
        }
    }
}
