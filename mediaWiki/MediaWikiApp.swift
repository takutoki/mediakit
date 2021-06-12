//
//  mediawikiApp.swift
//  mediawiki
//
//  Created by takumitokiwa on 2021/06/10.
//

import SwiftUI

@main
struct MediaWikiApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // 初期化設定 ex) firebase 環境設定
        return true
    }
}
