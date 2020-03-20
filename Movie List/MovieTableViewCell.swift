//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Hunter Oppel on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol MovieCellDelegate {
    func didTapSeenButton()
}

class MovieTableViewCell: UITableViewCell {
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    var delegate: MovieCellDelegate?
    
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func seenButtonTapped(_ sender: Any) {
        movie!.seen = !movie!.seen
        delegate?.didTapSeenButton()
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieLabel.text = movie.name
        if movie.seen == true {
            seenButton.setTitle("Seen", for: .normal)
        } else {
            seenButton.setTitle("Not Seen", for: .normal)
        }
    }
}
