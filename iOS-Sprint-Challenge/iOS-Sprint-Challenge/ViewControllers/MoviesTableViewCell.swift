//
//  MoviesTableViewCell.swift
//  iOS-Sprint-Challenge
//
//  Created by Blair Holmgren on 4/26/19.
//  Copyright © 2019 Blair Holmgren. All rights reserved.
//

import UIKit

protocol MoviesTableViewCellDelegate: class {
    func tappedSeenButton(on cell: MoviesTableViewCell)
}

class MoviesTableViewCell: UITableViewCell {

    weak var delegate: MoviesTableViewCellDelegate?
    

}
