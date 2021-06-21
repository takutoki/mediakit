//
//  Frog.swift
//  mediawiki
//
//  Created by takumitokiwa on 2021/06/20.
//

import Foundation

struct Media: Identifiable {
    let id: Int
    var title: String
    var description: String
    var imageUrl: URL?
}
