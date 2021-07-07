//
//  Movie.swift
//  Movie List
//
//  Created by Moses Robinson on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class Movie: Codable {
    var title: String
    var isSeen: Bool
    
    init(title: String, isSeen: Bool = false) {
        (self.title, self.isSeen) = (title, isSeen)
    }
}
