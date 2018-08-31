//
//  MoviePresenter.swift
//  Movie List
//
//  Created by Farhan on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

protocol MoviePresenter: class {
    var movieController: MovieController? {get set}
}
