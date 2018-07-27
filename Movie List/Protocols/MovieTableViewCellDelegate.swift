//
//  MovieTableViewCellDelegate.swift
//  Movie List
//
//  Created by Conner on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

protocol MovieTableViewCellDelegate: class {
    func seenButtonWasPressed(on cell: MovieTableViewCell)
}
