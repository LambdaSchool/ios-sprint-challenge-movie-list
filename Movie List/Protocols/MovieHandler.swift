//
//  MovieHandler.swift
//  Movie List
//
//  Created by Simon Elhoej Steinmejer on 27/07/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

protocol MovieHandler: class
{
    var movieController: MovieController? { get set }
}
