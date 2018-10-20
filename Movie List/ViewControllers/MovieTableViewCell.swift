//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Rick Wolter on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit


protocol MovieTableViewCellDelegate: class {
    func toggleWatched(on cell: MovieTableViewCell)
}


class MovieTableViewCell: UITableViewCell {
    
    var movie: Movie? {
        didSet { updateViews() }
    }
    weak var delegate: MovieTableViewCellDelegate?
    
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var watchedButton: UIButton!
    
    @IBAction func watchedButtonTapped(_ sender: Any) {
        delegate?.toggleWatched(on: self)
    }
    
    func updateViews(){
        guard let movie = movie else { return }
        movieLabel.text = movie.name
        
        let title = movie.hasWatched ? "Watched" : "Not Watched"
        watchedButton.setTitle(title, for: .normal)
    }
}
