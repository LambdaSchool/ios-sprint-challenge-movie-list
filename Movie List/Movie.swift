//
//  Movie.swift
//  Movie List
//
//  Created by Kobe McKee on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movie: Equatable {
    var title: String
    var hasBeenSeen: Bool
    
    init(title: String, hasBeenSeen: Bool = false) {
        self.title = title
        self.hasBeenSeen = hasBeenSeen
    }

}
