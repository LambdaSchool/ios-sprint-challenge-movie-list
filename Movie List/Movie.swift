//
//  Movie.swift
//  Movie List
//
//  Created by Alex Shillingford on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movie {
    var title: String
    var hasSeen: Bool
    
    init(title: String, hasSeen: Bool = false) {
        self.title = title
        self.hasSeen = hasSeen
    }
}
