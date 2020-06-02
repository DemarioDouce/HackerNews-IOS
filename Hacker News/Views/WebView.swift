//
//  WebView.swift
//  Hacker News
//
//  Created by Demario Douce on 2020-06-02.
//  Copyright © 2020 Demario Douce. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {

    let urlString: String?
    
    func makeUIView(context: UIViewRepresentableContext <WebView>) ->  WKWebView {
        
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext <WebView>) {
        
        if let safeString = urlString {
            
            if let url = URL(string: safeString){
                
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
        
    }
    
    
}
