//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by KRITSSEAN on 2021/01/12.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
