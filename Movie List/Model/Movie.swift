//
//  Movie.swift
//  Movie List
//
//  Created by Jeremy Taylor on 5/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie: Codable {
    var title: String
    var watched: Bool
    
    init(title: String, watched: Bool = false) {
        self.title = title
        self.watched = watched
    }
}
