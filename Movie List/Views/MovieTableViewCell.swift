//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Chris Price on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
    func seenButtonWasTapped(on cell:MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    
    @IBAction func seenButtonTapped(_ sender: Any) {
        delegate?.seenButtonWasTapped(on: self)
    }
    
    func updateViews() {
        guard let movie = movie else { return }
        let seenButtonTitle = movie.wasSeen ? "Not seen" : "Seen"
        //seenButton.setTitle(seenButtonTitle, for: .normal)
        
    }
    
    weak var delegate: MovieTableViewCellDelegate?
    
    
    //Maybe I am getting an error on line 23 because this is an unguarded, wrapped optional.
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }

    @IBOutlet weak var seenButton: UIButton!
    @IBOutlet weak var movieTitleLabel: UILabel!
    //I need to have this label update from something.
}

/* Referenced Paul's Notes project NoteTableViewCell and Julian's ArtGallery PaintingTableViewCell */
