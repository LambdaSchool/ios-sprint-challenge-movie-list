//
//  MovieModel.swift
//  Movie List
//
//  Created by Uptiie on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class movie {
    let movieTitle: String
    var hasSeen: Bool
    
    init(movieTitle: String, hasSeen: Bool = true) {
        self.movieTitle = movieTitle
        self.hasSeen = hasSeen
    }
    
}
