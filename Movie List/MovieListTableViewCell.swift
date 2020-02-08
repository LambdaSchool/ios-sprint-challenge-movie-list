//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Waseem Idelbi on 11/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var SeenButton: UIButton!
    @IBAction func seenButtonTapped(_ sender: Any) {
        if let movieStatus = movie?.seen {
            if movieStatus {
                movie?.seen = false
            }
            else {
                movie?.seen = true
            }
        }
    }
    

    
    var movie: Movie? {
        didSet {
            self.updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else {return}
        
        titleLabel.text = movie.title
        if movie.seen {
            SeenButton.titleLabel?.text = "Seen"
        }
        else {
            SeenButton.titleLabel?.text = "Not Seen"
        }
    }
    

}
