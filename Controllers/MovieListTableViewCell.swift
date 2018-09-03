//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Ilgar Ilyasov on 9/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieListTableViewCellDelegate: class {
    func seenUnseenTapped(for cell: MovieListTableViewCell)
}

class MovieListTableViewCell: UITableViewCell {
    
    func updateView() {
        
        guard let movie = movie else { return }
        movieListLabel.text = movie.movieTitle
        
        let seenUnseenButtonText = movie.hasSeen != false ? "SEEN" : "UNSEEN"
        seenUnseenButton.setTitle(seenUnseenButtonText, for: .normal)
    }

    var movie: Movie? {
        didSet {
            updateView()
        }
    }
    
    weak var delegate: MovieListTableViewCellDelegate?
    
    @IBOutlet weak var movieListLabel: UILabel!
    @IBOutlet weak var seenUnseenButton: UIButton!
    @IBAction func seenUnseenButtonTapped(_ sender: Any) {
        
        delegate?.seenUnseenTapped(for: self)
    }
    
}
