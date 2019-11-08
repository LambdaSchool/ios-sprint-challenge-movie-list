//
//  File.swift
//  Movie List
//
//  Created by Patrick Millet on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

struct Movie: Equatable {
    
    var name: String
    var hasSeen: Bool

    init(name: String, hasSeen: Bool) {
        self.name = name
        self.hasSeen = hasSeen
    }
}
