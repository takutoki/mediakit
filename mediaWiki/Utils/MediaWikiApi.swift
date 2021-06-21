//
//  MediaWikiApi.swift
//  mediawiki
//
//  Created by takumitokiwa on 2021/06/13.
//

import Alamofire
import Combine

class MediaWikiApi: BaseApiProtocol {

    typealias ResponseData = WikiImageListResponse

    var baseUrl: String = "https://ja.wikipedia.org/w/api.php"
    var queryParameters = ""
    var headers: HTTPHeaders? = [.accept("application/json")]

//    func hoge() {
//        get(url: <#T##String#>, parameters: <#T##[String : String]#>)
//    }
}
