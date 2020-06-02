//
//  ContentView.swift
//  Hacker News
//
//  Created by Demario Douce on 2020-06-02.
//  Copyright © 2020 Demario Douce. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts){ post in
                
                Text(post.title)
                
            }
        }
        .navigationBarTitle("Hacker News")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let posts = [
    
    Post(id: "1", title: "Why"),
    Post(id: "2", title: "Me"),
    Post(id: "3", title: "Three")
    
]
