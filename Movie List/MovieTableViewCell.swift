//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_204 on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol SeenMovieDelegate {
    func hasSeenMovie(_ movie: Movie, _ hasSeen: Bool)
}

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var hasSeenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    var delegate: SeenMovieDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func hasSeenMovieTapped(_ sender: UIButton) {
        guard let movie = movie else { return }
        
        if (movie.hasSeen) {
            sender.setTitle("Not Seen", for: .normal)
            delegate?.hasSeenMovie(movie, false)
                
        } else {
            sender.setTitle("Seen", for: .normal)
            delegate?.hasSeenMovie(movie, true)
        }
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieLabel.text = movie.name
        if (movie.hasSeen) {
            hasSeenButton.setTitle("Seen", for: .normal)
        } else {
            hasSeenButton.setTitle("Not Seen", for: .normal)
        }
        
    }

}
