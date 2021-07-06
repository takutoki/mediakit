//
//  WikiTitleListTableCellView.swift
//  mediawiki
//
//  Created by takumitokiwa on 2021/06/26.
//

import SwiftUI

struct WikiTitleListTableCellView: View {
    
    @State var article: Article

    var body: some View {
        HStack {
            Text(article.title)
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
        }
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
    }
}

struct WikiTitleListTableCellView_Previews: PreviewProvider {
    static var previews: some View {
        WikiTitleListTableCellView(article: Article(id: 1, title: "記事1"))
    }
}
