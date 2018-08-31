//
//  Movie.swift
//  Movie List
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

struct Movie: Equatable {
    var title: String
    var isSeen = false

    init (title: String) {
        self.title = title
    }
}


