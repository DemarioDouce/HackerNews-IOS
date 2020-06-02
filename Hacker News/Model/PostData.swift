//
//  PostData.swift
//  Hacker News
//
//  Created by Demario Douce on 2020-06-02.
//  Copyright © 2020 Demario Douce. All rights reserved.
//

import UIKit

struct Results:Decodable {
    
    let hits: [Post]
    
}

struct Post:Decodable, Identifiable {
    var id: String {
        
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
