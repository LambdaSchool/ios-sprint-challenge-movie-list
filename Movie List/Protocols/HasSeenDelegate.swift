//
//  HasSeenDelegate.swift
//  Movie List
//
//  Created by Patrick Millet on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


protocol HasSeenDelegate: class {
    func toggleSeen(on cell: MoviesTableViewCell)
}
