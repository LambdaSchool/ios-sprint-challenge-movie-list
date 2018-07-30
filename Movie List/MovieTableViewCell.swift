//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Linh Bouniol on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
    func seenButtonWasTapped(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    
    weak var delegate: MovieTableViewCellDelegate?
    
//    var movie: Movie? {
//        didSet {
//            update()
//        }
//    }
    
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var isSeenButton: UIButton!
    
    @IBAction func isSeenButtonTapped(_ sender: Any) {
        delegate?.seenButtonWasTapped(on: self)
    }
    
//    func update() {
//        guard let movie = movie else { return }
//        
//        nameLabel.text =  movie.name
//        
//        if movie.isSeen {
//            isSeenButton.setTitle("Seen", for: .normal)
//        } else if !movie.isSeen {
//            isSeenButton.setTitle("Not Seen", for: .normal)
//        }
//    }
}
