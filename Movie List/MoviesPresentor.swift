//
//  MoviesPresentor.swift
//  Movie List
//
//  Created by Christopher Aronson on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

protocol MoviesPresenter: AnyObject {
    var movieController: MovieController? { set get }
}
