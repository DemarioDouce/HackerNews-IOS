//
//  DetailView.swift
//  Hacker News
//
//  Created by Demario Douce on 2020-06-02.
//  Copyright © 2020 Demario Douce. All rights reserved.
//

import SwiftUI
import WebKit


struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url:"https://www.google.com")
    }
}


