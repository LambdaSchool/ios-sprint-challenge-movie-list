//
//  MoveListPresenter.swift
//  Movie List
//
//  Created by Madison Waters on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

// Like a set of instructions saying this needs to happen in x situation follow these instructions

protocol MovieListPresenter: class {
    var movieController: MovieController? { get set }
}
