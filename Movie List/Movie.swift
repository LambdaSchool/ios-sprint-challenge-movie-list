//
//  Movie.swift
//  Movie List
//
//  Created by Michael Flowers on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movie: Equatable {
    let title: String
    var hasSeen: Bool = false
    init(title: String) {
        self.title  = title
    }
}
