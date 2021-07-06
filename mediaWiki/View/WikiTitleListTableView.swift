//
//  WikiTitleListTableView.swift
//  mediawiki
//
//  Created by takumitokiwa on 2021/06/26.
//

import SwiftUI

struct WikiTitleListTableView: View {
    
    var keyword: String
    @State var articles: [Article] = []
    
    var body: some View {
        List(articles) { article in
            WikiTitleListTableCellView(article: article)
        }.onAppear {
            // api call with keyword
            self.articles = [
                Article(id: 1, title: "記事1"),
                Article(id: 2, title: "記事2")
            ]
        }.navigationTitle(Text("\"\(keyword)\"で検索"))
    }
}

struct WikiTitleListTableView_Previews: PreviewProvider {
    static var previews: some View {
        WikiTitleListTableView(keyword: "猫")
    }
}
