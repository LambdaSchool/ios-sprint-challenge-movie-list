//
//  MoviePresenter.swift
//  iosSprintChallenge1
//
//  Created by Jonathan Ferrer on 4/26/19.
//  Copyright © 2019 Jonathan Ferrer. All rights reserved.
//

import Foundation

protocol MoviesPresenter: AnyObject {
    
    var movieController: MovieController? {set get}
    
}
