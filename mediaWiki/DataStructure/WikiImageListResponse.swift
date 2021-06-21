//
//  WikiImageListResponse.swift
//  mediawiki
//
//  Created by takumitokiwa on 2021/06/12.
//

/*
{
 "query": {
    "allimages": [
        {
            "name": "HinamizawaKurumi.png",
            "timestamp": "2021-06-11T15:12:10Z",
            "url": "https://upload.wikimedia.org/wikipedia/ja/6/65/HinamizawaKurumi.png",
             "descriptionurl": "https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:HinamizawaKurumi.png",
             "descriptionshorturl": "https://ja.wikipedia.org/w/index.php?curid=4394621",
             "ns": 6,
             "title": "\u30d5\u30a1\u30a4\u30eb:HinamizawaKurumi.png"
        }
    ]
}
*/


import Foundation

struct WikiImageListResponse: Codable {
    var query: Allimages
    
    struct Allimages: Codable {
        var allimages: [WikiImageResponse]
    }
    
    struct WikiImageResponse: Codable {
        var name: String
        var timestamp: String
        var url: String
        var title: String
    }
}
