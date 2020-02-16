//
//  MoviesTableViewCellDelegate.swift
//  Movie List
//
//  Created by David Williams on 2/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol MoviesTableViewCellDelegate: AnyObject {
    func toggleHasBeenSeen(for cell: MoviesTableViewCell)
}
