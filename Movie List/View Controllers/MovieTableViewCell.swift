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

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    // Creating delegate variable of type MovieTableViewCellDelegate that is optional
    weak var delegate: MovieTableViewCellDelegate?
    
    // We call this updateViews for this class of MovieTabelViewCell
    private func updateViews() {
  
        // If the movie is set then unwrap it to the constant of movie, but why?
        guard let movie = self.movie else { return }
        
        // We want to set the text of the label to the movie's name
        self.nameLabel.text = movie.name
        
        // If the movie.isSeen has been set to true, then set the button text to seen, otherwise set it to not-seen, but why put this here?
        if movie.isSeen == true {
            self.seenButton.setTitle("Seen", for: .normal)
        } else {
            self.seenButton.setTitle("Not Seen", for: .normal)
        }
    }
    
    @IBAction func seenBuuttonTapped(_ sender: Any) {
        delegate?.tappedSeenButton(on: self)
    }
    
}
