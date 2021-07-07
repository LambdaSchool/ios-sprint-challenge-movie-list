//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Ciara Beitel on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    @IBOutlet weak var seenOrNotButtonLabel: UIButton!
    
    @IBAction func seenOrNotButton(_ sender: Any) {
        guard var unwrappedMovie = movie else { return }
        unwrappedMovie.seen.toggle()
        movie = unwrappedMovie
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    private func updateViews() {
        guard let movie = movie else { return }
        movieTitleLabel.text = movie.title
        // Ternary operators FTW
        seenOrNotButtonLabel.setTitle(movie.seen ? "Seen it" : "Need to watch it", for: .normal)
        seenOrNotButtonLabel.setTitleColor(movie.seen ? .blue : .red, for: .normal)
    }
}
