//
//  MyWebView.swift
//  CafeApp_SwiftUI
//
//  Created by 이선호 on 2022/06/21.
//

import SwiftUI
import WebKit

struct MyWebView: UIViewRepresentable {
    var urlToLoad: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "")
    }
}
