//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Corey Sessions on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    var movie: Movie? {
        didSet {
            self.updateViews()
        }
    }
    
    var movieDataDelegate: MovieDataControllerDelegate?
    
    @IBOutlet weak var movieLbl: UILabel!
    @IBOutlet weak var seenBtn: UIButton!
    
    @IBAction func seenBtnPressed(_ sender: Any) {
      movieDataDelegate?.tappedSeenMovieButton(on: self)
    }
    
    
    
    private func updateViews() {
        guard let movie     = self.movie else { return }
        self.movieLbl.text  = movie.movieName
        if movie.seenMovie  == true {
            self.seenBtn.setTitle("Seen", for: .normal)
        } else {
            self.seenBtn.setTitle("Unseen", for: .normal)
        }
     
    }
    
}

