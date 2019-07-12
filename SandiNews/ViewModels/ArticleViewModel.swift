//
//  ArticleViewModel.swift
//  SandiNews
//
//  Created by OVO on 12/07/19.
//  Copyright © 2019 Samuel Lim. All rights reserved.
//

import Foundation

struct ArticleListViewModel {
    let articles: [Article]
    
    var numberOfSection: Int {
        return 1
    }
    
    func numberOfRowInSection(_ section: Int)->Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ idx: Int)->ArticleViewModel {
        return ArticleViewModel(self.articles[idx])
    }
}

struct ArticleViewModel {
    private let article: Article

    init(_ article:Article){
        self.article = article
    }
    
    var title: String {
        return self.article.title
    }
    
    var description: String {
        return self.article.description ?? "-"
    }
    
    var url: String {
        return self.article.url
    }
}
