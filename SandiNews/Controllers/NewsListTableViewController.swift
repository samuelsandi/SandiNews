//
//  NewsListTableViewController.swift
//  SandiNews
//
//  Created by Samuel Lim on 12/07/19.
//  Copyright © 2019 Samuel Lim. All rights reserved.
//

import UIKit

class NewsListTableViewController: UITableViewController {
    private var articleListVM: ArticleListViewModel!
    private var language: String = "ID"
    
    override func viewDidLoad() {
        setup()
    }
    
    private func setup() {
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=id&apiKey=786454ff916248b181af9da19daf7efb")!
        WebService.init().getArticles(url: url){ articles in
            if let articles = articles {
                self.articleListVM = ArticleListViewModel(articles: articles)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.articleListVM == nil ? 0 : self.articleListVM.numberOfSection
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleListVM.numberOfRowInSection(section)
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
