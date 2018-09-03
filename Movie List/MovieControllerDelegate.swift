//
//  MovieControllerProtocol.swift
//  Movie List
//
//  Created by Ilgar Ilyasov on 9/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

protocol MovieControllerDelegate: class {
    var movieController: MovieController? { get set }
}
