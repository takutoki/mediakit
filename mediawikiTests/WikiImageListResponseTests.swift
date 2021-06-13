//
//  WikiImageListResponseTests.swift
//  mediawikiTests
//
//  Created by takumitokiwa on 2021/06/13.
//

import Foundation
import XCTest
@testable import mediawiki

class WikiImageListResponseTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testResponseParsetoJson() throws {
        let data = """
        {
            "query": {
                "allimages": [
                    {
                        "name": "HinamizawaKurumi.png",
                        "timestamp": "2021-06-11T15:12:10Z",
                        "url": "https://example.org/example1.png",
                        "title": "example1.png"
                    }
                ]
            }
        }
        """.data(using: .utf8)!
        
        guard let res = try? JSONDecoder().decode(WikiImageListResponse.self, from: data) else { return XCTFail() }
        _ = res.query.allimages.map { media in
            XCTAssertEqual(media.name, "HinamizawaKurumi.png")
            XCTAssertEqual(media.timestamp, "2021-06-11T15:12:10Z")
            XCTAssertEqual(media.url, "https://example.org/example1.png")
            XCTAssertEqual(media.title, "example1.png")
        }
        XCTAssertEqual(res.query.allimages.count, 1)
    }
}
