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
        guard let movie = self.movie else { return }
        self.movieLbl.text = movie.movieName
        print(movieLbl.text)
        guard let seen = self.seen else { return }
        self.seenBtn.setTitle("Unseen", for: .normal)
    }
    
}
