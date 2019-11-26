//
//  newMovieTableViewCell.swift
//  Movie List
//
//  Created by Kevin Stewart on 11/22/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class newMovieTableViewCell: UITableViewCell {
    @IBOutlet var newMovieLabel: UILabel!
    @IBOutlet var seenOrUnseenButtonTapped: UIButton!
    
    var movie: Movie? {
        didSet {
            updateView()
        }
        
    }

    
    @IBAction func seenOrUnseenButtonTapped(_ sender: UIButton) {
    if movie != nil {
        movie!.seenOrNotSeen.toggle()
    }
    updateView()

    }
    
    private func updateView() {
        guard let movie = movie else { return }
            newMovieLabel.text = movie.title
        if movie.seenOrNotSeen {
            seenOrUnseenButtonTapped.setTitle("Seen", for: .normal)
        } else {
            seenOrUnseenButtonTapped.setTitle("Unseen", for: .normal)
    }
}

}

