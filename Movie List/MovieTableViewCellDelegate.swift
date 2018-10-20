//
//  MovieTableViewCellDelegate.swift
//  Movie List
//
//  Created by Nikita Thomas on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
    func tappedSeenButton(on cell: MovieTableViewCell)
}
