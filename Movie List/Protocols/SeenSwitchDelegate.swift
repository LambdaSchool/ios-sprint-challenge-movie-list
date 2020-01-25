//
//  SeenSwitchDelegate.swift
//  Movie List
//
//  Created by Chad Rutherford on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

/// Protocol utilized to enable communcation between the MovieCell and the MovieListViewController
protocol SeenSwitchDelegate: class {
    func toggleSeen(on cell: MovieCell)
}
