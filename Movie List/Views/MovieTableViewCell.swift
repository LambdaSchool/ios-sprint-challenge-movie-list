//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by David Wright on 11/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var seenMovieButton: UIButton!
    
    // MARK: - IBActions
    @IBAction func seenMovieButtonTapped(_ sender: UIButton) {
        if movie != nil {
            movie!.hasBeenSeen.toggle()
        }
        updateViews()
    }
    
    // MARK: - Properties
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }

    private func updateViews() {
        guard let movie = movie else { return }
        
        movieTitleLabel.text = movie.title
        seenMovieButton.setTitle(movie.hasBeenSeen ? "Seen" : "Not Seen", for: .normal)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
