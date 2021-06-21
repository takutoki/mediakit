//
//  ContentView.swift
//  mediawiki
//
//  Created by takumitokiwa on 2021/06/10.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    let medias: [Media] = [
        Media(id: 1, title: "test1", description: "test1である", imageUrl: URL(string: "https://upload.wikimedia.org/wikipedia/ja/a/a7/HeiwaKotsu851.jpeg")),
        Media(id: 2, title: "test2", description: "test2である", imageUrl: URL(string: ""))
    ]

    var body: some View {
        NavigationView {
            List(medias) { media in
                NavigationLink(
                    destination: WikiDetailView(media: media)) {
                    WikiImageTableCellView(media: media)
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
