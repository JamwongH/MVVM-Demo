//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by Jamwong on 2021/10/29.
//  Copyright © 2021 Mohammad Azam. All rights reserved.
//

import Foundation

struct ArticleListViewModel{
    let articles: [Article]
}

extension ArticleListViewModel{
    var numberOfSections: Int {
        return 1
    }
    func numberOfRowsInSection(_ section: Int) -> Int{
        return self.articles.count
    }
    func articleAtIndex(_ index: Int) -> ArticleViewModel{
        let article = articles[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel{
    private let article: Article
}

extension ArticleViewModel{
    init(_ article: Article){
        self.article = article
    }
}

extension ArticleViewModel{
    var title: String{
        return self.article.title
    }
    var description: String {
        return self.article.description
    }
}
