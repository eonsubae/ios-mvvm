//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by KRITSSEAN on 2021/01/12.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    
    private var articleListVM: ArticleListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "http://newsapi.org/v2/everything?q=bitcoin&from=2020-12-12&sortBy=publishedAt&apiKey=ebe737ae76f14795a53a28052d9df9ee")!
        
        WebService().getArticles(url: url) { articles in
            
            if let articles = articles {
                self.articleListVM = ArticleListViewModel(articles: articles)

                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
                        
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.articleListVM == nil ? 0 : self.articleListVM.numberOfSections
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleListVM.numberOfRowsInSection(section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTableViewCell", for: indexPath) as? ArticleTableViewCell else {
            fatalError("ArticleTableViewCell not found")
        }
        
        let articleVM = self.articleListVM.articleAtIndex(indexPath.row)
        
        cell.titleLabel.text = articleVM.title
        cell.descriptionLabel.text = articleVM.description
        return cell
    }
}
