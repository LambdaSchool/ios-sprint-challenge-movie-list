//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by patelpra on 9/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol  MovieTableViewCellDelegate: class {
    func tappedSeenButton(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    weak var delegate: MovieTableViewCellDelegate?

    private func updateViews() {
        guard let movie = self.movie else {
            return
        }
        
        self.nameLabel.text = movie.name
        
    }
    
    if movie.isSeen == true {
        self.seenButton.setTitle("Seen", for: .normal)
    } else {
    self.seenButton.setTitle("Not Seen", for: .normal)
    }

}
