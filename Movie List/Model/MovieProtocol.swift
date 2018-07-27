//
//  MovieProtocol.swift
//  Movie List
//
//  Created by David Oliver Doswell on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

protocol MovieProtocolDelegate: class {
    var movieController: MovieController? { get set }
}
