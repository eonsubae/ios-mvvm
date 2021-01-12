//
//  Article.swift
//  GoodNews
//
//  Created by KRITSSEAN on 2021/01/12.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
    
    
}
