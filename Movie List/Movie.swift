//
//  Movie.swift
//  Movie List
//
//  Created by Kobe McKee on 4/27/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


struct Movie {
    var title: String
    var haveSeen: Bool
    
    init(title : String, haveSeen: Bool = false) {
        self.title = title
        self.haveSeen = haveSeen
    }
}
