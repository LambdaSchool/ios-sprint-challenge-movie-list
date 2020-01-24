//
//  Movie.swift
//  Movie List
//
//  Created by Alex Thompson on 9/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
struct Movie: Codable, Equatable {
    var name: String
    var isSeen: Bool = false
}
