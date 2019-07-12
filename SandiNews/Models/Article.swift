//
//  Article.swift
//  SandiNews
//
//  Created by OVO on 12/07/19.
//  Copyright © 2019 Samuel Lim. All rights reserved.
//

import Foundation

struct Article: Decodable {
    let title: String
    let description: String
    let url: String
    let content: String
}
