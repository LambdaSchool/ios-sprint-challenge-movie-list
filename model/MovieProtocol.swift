//
//  MovieProtocol.swift
//  Movie List
//
//  Created by Brian Vilchez on 4/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
protocol MoviePresenter: AnyObject {
    var movieController: MovieController? {set get}
}
