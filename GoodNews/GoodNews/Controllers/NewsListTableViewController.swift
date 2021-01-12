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
        
        let url = URL(string: "http://newsapi.org/v2/everything?q=bitcoin&from=2020-12-12&sortBy=publishedAt&apiKey=ebe737ae76f14795a53a28052d9df9ee")!
        
        WebService().getArticles(url: url) { _ in
            
            
        }
    }
}
