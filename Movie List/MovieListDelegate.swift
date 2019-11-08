//
//  MovieListDelegate.swift
//  Movie List
//
//  Created by Zack Larsen on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

protocol MovieListDelegate: class {
    func toggleSeenButton(on cell: seenTableViewCell)
}
