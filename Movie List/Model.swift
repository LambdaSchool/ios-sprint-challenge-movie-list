//
//  Model.swift
//  Movie List
//
//  Created by Brian Cobb on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

import UIKit

struct Movie: Equatable {
    var movie: String
    
    
    init(movie: String) {
        self.movie = movie
        
    }
}
