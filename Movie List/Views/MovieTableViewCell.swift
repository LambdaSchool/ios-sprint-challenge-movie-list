//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by morse on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieWatchedDelegate {
    func toggleMovieWatched(for Cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var watchedButton: UIButton!
    
    var delegate: MovieWatchedDelegate?
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        nameLabel.text = movie.name
        switch movie.watched {
        case true:
            watchedButton.setTitle("Seen", for: .normal)
        case false: watchedButton.setTitle("Not Seen", for: .normal)
        }
    }
    
    @IBAction func watchedTapped(_ sender: UIButton) {
        
        delegate?.toggleMovieWatched(for: self)
    }
    

}
