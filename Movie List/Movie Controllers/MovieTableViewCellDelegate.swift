//
//  MovieTableViewCellDelegate.swift
//  Movie List
//
//  Created by patelpra on 5/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

protocol MovieTableViewCellDelegate: class {
    func tappedSeenButton(on cell: MovieTableViewCell)
}
