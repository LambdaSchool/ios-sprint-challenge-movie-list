//
//  Movie.swift
//  Movie List
//
//  Created by Jake Connerly on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class Movie {
    var movieName: String
    var hasSeen: Bool
    
    init (movieName: String, hasSeen: Bool = false) {
        self.movieName = movieName
        self.hasSeen = hasSeen
    }
}
