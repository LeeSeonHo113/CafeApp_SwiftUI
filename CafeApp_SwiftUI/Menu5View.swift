//
//  Menu5View.swift
//  CafeApp_SwiftUI
//
//  Created by 이선호 on 2022/06/21.
//

import SwiftUI

struct Menu5View: View {
    var body: some View {
        HStack {
            MyWebView(urlToLoad: "http://paikdabang.com/store/")
        }
        .navigationTitle("매장찾기")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Menu5View_Previews: PreviewProvider {
    static var previews: some View {
        Menu5View()
    }
}
