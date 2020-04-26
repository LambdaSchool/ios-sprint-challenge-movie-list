//
//  Movie.swift
//  Movie List
//
//  Created by Hannah Bain on 4/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation


struct Movie: Equatable {
    var title: String
    var hasSeen: Bool
    
    init(title: String, hasSeen: Bool = false) {
        self.title = title
        self.hasSeen = hasSeen 
    }
}
