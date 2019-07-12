//
//  NewsListTableViewController.swift
//  SandiNews
//
//  Created by OVO on 12/07/19.
//  Copyright © 2019 Samuel Lim. All rights reserved.
//

import UIKit

class NewsListTableViewController: UITableViewController {
    override func viewDidLoad() {
        setup()
    }
    private func setup() {
        let url = URL(string: "https://newsapi.org/v2/everything?q=bitcoin&from=2019-06-12&sortBy=publishedAt&apiKey=786454ff916248b181af9da19daf7efb")!
        WebService.init().getArticles(url: url){ _ in 
            
        }
    }
}
