//
//  MovieListProtocol.swift
//  MovieList2
//
//  Created by Welinkton on 9/7/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import Foundation

// this is going to pass a list of rules to each class
protocol MovieListProtocol:class {
    var movieController: MovieController? {get set}
}
