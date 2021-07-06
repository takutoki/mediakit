//
//  WikiSearchView.swift
//  mediawiki
//
//  Created by takumitokiwa on 2021/06/26.
//

import SwiftUI

struct WikiSearchView: View {
    
    @State var keyword: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("タイトルを入力", text: $keyword)
                .font(.title)
                .keyboardType(.webSearch)
            NavigationLink(
                destination: WikiTitleListTableView(keyword: keyword)) {
                Text("検索")
            }
        }.padding(20)
    }
}

struct WikiSearchView_Previews: PreviewProvider {
    static var previews: some View {
        WikiSearchView()
            .previewDevice("iPhone 12")
    }
}
