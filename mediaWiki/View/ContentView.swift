//
//  ContentView.swift
//  mediawiki
//
//  Created by takumitokiwa on 2021/06/10.
//

import SwiftUI
import Combine

struct ContentView: View {

    var body: some View {
        NavigationView {
            WikiSearchView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
