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
    
    var seen: Movie? {
        didSet {
            self.updateViews()
        }
    }
    
    @IBOutlet weak var movieLbl: UILabel!
    @IBOutlet weak var seenBtn: UIButton!
    
    
    @IBAction func seenBtnPressed(_ sender: UIButton) {
        
    }
    
    private func updateViews() {
     
    }
    
}

extension MovieTableViewCell: MovieDataControllerDelegate {
    func updateMovieList(movieName: String, seenMovie: Bool) {
        movieLbl.text = movieName
        if seenMovie {
            seenBtn.setTitle("Seen", for: .normal)
        } else {
            seenBtn.setTitle("Unseen", for: .normal)
        }
    }
    
    
    
}
