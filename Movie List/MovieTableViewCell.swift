//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Jason Modisett on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
    func seenButtonWasTapped(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    
    

    func updateViews() {
        
    }

    var movie: Movie? { didSet { updateViews() }}
    weak var delegate: MovieTableViewCellDelegate?
    
    
    
}
