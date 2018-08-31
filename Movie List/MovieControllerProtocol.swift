//
//  MovieControllerProtocol.swift
//  Movie List
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

//Protocol to ensure that a view controller has a movie controller variable
protocol MovieControllerProtocol: class {
    var movieContoller: MovieController? { get set }
}
