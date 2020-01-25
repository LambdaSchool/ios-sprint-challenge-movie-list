//
//  AddMovieDelegate.swift
//  Movie List
//
//  Created by Chad Rutherford on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

/// Protocol utilized to enable communication between the MovieDetailViewController and the MovieListViewController
protocol MovieDelegate: class {
    func didAdd(_ movie: Movie)
    func didUpdate(_ movie: Movie, with name: String)
}
