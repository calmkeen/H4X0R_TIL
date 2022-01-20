//
//  DetailView.swift
//  H4X0R
//
//  Created by calmkeen on 2022/01/20.
//

import SwiftUI
import WebKit


struct DetailView: View{
    
    let url: String?
    
    var body: some View{
        WebView(urlString: url)
    }
}

struct DetailView_Preview: PreviewProvider{
    static var previews: some View{
    DetailView(url: "http://google.com")
}
}


