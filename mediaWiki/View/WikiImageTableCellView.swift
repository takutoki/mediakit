//
//  WikiImageTableCellView.swift
//  mediawiki
//
//  Created by takumitokiwa on 2021/06/20.
//

import SwiftUI
import SDWebImageSwiftUI

struct WikiImageTableCellView: View {
    
    let media: Media

    var body: some View {
        VStack {
            WebImage(url: media.imageUrl)
                .resizable()
                .frame(width: .infinity, height: 150, alignment: .center)
                .clipped()
        }
    }
}

struct WikiImageTableCellView_Previews: PreviewProvider {
    static var previews: some View {
        WikiImageTableCellView(media: Media(id: 1, title: "test", description: "test", imageUrl: URL(string: "https://upload.wikimedia.org/wikipedia/ja/c/c6/%E4%B8%89%E5%8E%9F%E6%A9%8B%E5%9C%B0%E4%B8%8B%E8%A1%97%E6%92%A4%E5%8E%BB%E5%BE%8C%E3%81%AE%E6%97%A7%E4%B8%89%E5%8E%9F%E6%A9%8B%E4%BB%98%E8%BF%91%EF%BC%88%E6%99%B4%E6%B5%B7%E9%80%9A%E3%82%8A%E5%8D%97%E5%81%B4%E3%82%88%E3%82%8A%EF%BC%89.jpg")))
    }
}
