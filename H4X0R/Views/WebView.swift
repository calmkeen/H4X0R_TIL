//
//  WebView.swift
//  H4X0R
//
//  Created by calmkeen on 2022/01/20.
//

import Foundation
import WebKit
import SwiftUI


struct WebView: UIViewRepresentable{
//
    let urlString: String?

    func makeUIView(context: Context) ->WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
//    var urlToLoad: String
//
//    func makeWeb(context: Context)-> WKWebView{
//        guard let url = URL(string: self.urlToLoad) else {
//            return WKWebView()
//        }
//        let webView = WKWebView()
//    webView.load(URLRequest(url: url))
//        return webView
//    }
//    func updateUIView(_ uiView: UIViewType, context: Context) {
//        <#code#>
//    }
//}
