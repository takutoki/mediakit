//
//  WikiDetailView.swift
//  mediawiki
//
//  Created by takumitokiwa on 2021/06/20.
//

import SwiftUI
import SDWebImageSwiftUI

struct WikiDetailView: View {
    
    let media: Media

    var body: some View {
        VStack(alignment: .center) {
            ZStack {
                AnimatedImage(url: media.imageUrl)
                    .resizable()
                    .frame(width: .infinity, height: 200, alignment: .top)
            }
            Form {
                Section(header: Text("title")) {
                    Text(media.title)
                }
                Section(header: Text("description")) {
                    Text(media.description)
                }
            }
            
        }
        .navigationBarTitle(Text("サンプル"), displayMode: .inline)
    }
}

struct WikiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WikiDetailView(media: Media(id: 1, title: "test", description: "test descrition", imageUrl: URL(string: "https://upload.wikimedia.org/wikipedia/ja/a/a7/HeiwaKotsu851.jpeg")))
    }
}
