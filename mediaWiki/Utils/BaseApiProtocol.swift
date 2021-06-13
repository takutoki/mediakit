//
//  BaseApiProtocol.swift
//  mediawiki
//
//  Created by takumitokiwa on 2021/06/13.
//

import Foundation
import Alamofire
import Combine

protocol BaseApiProtocol {

    associatedtype ResponseData: Codable

    var baseUrl: String { get }
    var headers: HTTPHeaders? { get }

    func request(url: String, method: HTTPMethod, parameters: [String:String]?) -> Future<ResponseData, Error>
    func get(url: String, parameters: [String:String]) -> Future<ResponseData, Error>
}

extension BaseApiProtocol {

    func request(url: String, method: HTTPMethod, parameters: [String:String]?) -> Future<ResponseData, Error> {
        return Future<ResponseData, Error> { promise in
            AF.request(url, method: .get, parameters: [:], encoding: URLEncoding.httpBody, headers: self.headers)
                .responseJSON{ res in
                    switch res.result {
                    case .success(_):
                        guard let data = res.data else { return }
                        guard let parsedData = try? JSONDecoder().decode(ResponseData.self, from: data) else { return }
                        promise(.success(parsedData))
                    case .failure(let error):
                        promise(.failure(error))
                    }
                }
        }
    }

    func get(url: String, parameters: [String:String]) -> Future<ResponseData, Error> {
        return request(url: baseUrl + url, method: .get, parameters: parameters)
    }
}
