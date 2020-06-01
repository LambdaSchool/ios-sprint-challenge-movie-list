//
//  Movie.swift
//  Movie List
//
//  Created by Dojo on 5/31/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

struct Movie: Equatable {
    var name: String

    init(name: String) {
        self.name = name
    }

    static func == (lhs: Movie, rhs: Movie) -> Bool {
        return lhs.name == rhs.name
    }
}
