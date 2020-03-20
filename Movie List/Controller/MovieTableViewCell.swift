//
//  MovieTableTableViewCell.swift
//  Movie List
//
//  Created by Shawn James on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var hasBeenSeenButton: UIButton!
    
    // MARK: - Properties
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: - Overrides
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    // MARK: - Actions
    @IBAction func hasBeenSeenButtonTapped(_ sender: Any) {
        self.movie?.hasBeenSeen.toggle()
        switch self.movie?.hasBeenSeen {
        case true:
            self.hasBeenSeenButton.setTitle("Seen", for: .normal)
        default:
            self.hasBeenSeenButton.setTitle("Not Seen", for: .normal)
        }
    }
    
    // MARK: - Methods
    private func updateViews() {
        guard let unwrappedMovie = movie else { return }
        movieNameLabel.text = unwrappedMovie.name
    }
    
}
