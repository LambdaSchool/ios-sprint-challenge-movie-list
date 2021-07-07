//
//  Movie.swift
//  Movie List
//
//  Created by Alex Shillingford on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movie {
    var title: String
    var isSeen: Bool
    
    init(title: String, isSeen: Bool = false) {
        self.title = title
        self.isSeen = isSeen
    }
}
