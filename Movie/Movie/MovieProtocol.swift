//
//  MovieProtocol.swift
//  Movie
//
//  Created by Diante Lewis-Jolley on 4/26/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation

protocol MovieTableViewCellDelegate: class {
    func wasSeenButtonTapped(on cell: MovieTableViewCell)
}
