//
//  MovieProtocol.swift
//  Movie
//
//  Created by Diante Lewis-Jolley on 4/26/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation



protocol MoviePresenter: AnyObject {
    var movieController: MovieController? {set get}
}
