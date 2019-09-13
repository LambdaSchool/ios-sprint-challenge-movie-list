//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Gi Pyo Kim on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol hasBeenSeenDelegate {
    func hasBeenSeenTabbed (_ movie: Movie)
}

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var hasBeenSeenButton: UIButton!
    
    var delegate: hasBeenSeenDelegate?
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }

    @IBAction func hasBeenSeenTabbed(_ sender: UIButton) {
        guard let movie = movie else { return }
        delegate?.hasBeenSeenTabbed(movie)
    }
    
    private func updateViews(){
        guard let movie = movie else { return }
        
        movieNameLabel.text = movie.name
        movie.hasBeenSeen ? hasBeenSeenButton.setTitle("Seen", for: .normal) : hasBeenSeenButton.setTitle("Not Seen", for: .normal)

    }
}
