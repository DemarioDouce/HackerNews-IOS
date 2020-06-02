//
//  ContentView.swift
//  Hacker News
//
//  Created by Demario Douce on 2020-06-02.
//  Copyright © 2020 Demario Douce. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManagerRef = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManagerRef.posts){ post in
                
                HStack {
                    Text("\(post.points)")
                    Text(post.title)
                }
                
            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear {
            self.networkManagerRef.getData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
