//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Ian Becker on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol movieTableViewCellDelegate {
    func didTapSeenButton(text: String)
}

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieLabel: UILabel!
    @IBAction func seenButtonTapped(_ sender: Any) {
    }
    
    var delegate: movieTableViewCellDelegate?
    
    func update(with movie: Movie) {
        movieLabel.text = movie.name
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
