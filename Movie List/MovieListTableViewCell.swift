//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by scott harris on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

enum SeenText: String {
    case seen = "Seen"
    case notSeen = "Not Seen"
}

class MovieListTableViewCell: UITableViewCell {
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    var movie: Movie? {
        didSet {
           updateViews()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        seenButton.layer.cornerRadius = 8
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func seenTapped(_ sender: Any) {
        if let movie = movie {
            var myMovie = movie
            myMovie.wasSeen.toggle()
            self.movie = myMovie
            configureSeenButton()
        }
        
    }
    
    func updateViews() {
        if let movie = movie {
            movieNameLabel.text = movie.name
            configureSeenButton()
        }
    }
    
    func configureSeenButton() {
        if let movie = movie {
            switch movie.wasSeen {
                case true:
                    seenButton.backgroundColor = .blue
                    seenButton.setTitle(SeenText.seen.rawValue, for: .normal)
                case false:
                    seenButton.backgroundColor = .red
                    seenButton.setTitle(SeenText.notSeen.rawValue, for: .normal)
            }
        }
    }
}
