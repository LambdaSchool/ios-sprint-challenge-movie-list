//
//  MovieListTableViewCell.swift
//  MovieListSprint
//
//  Created by admin on 7/19/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class MovieListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBAction func seenButton(_ sender: UIButton) {
    }
    
    // does update views set the information from the "addMovie" to the tableviewcell
    var Movie: Movie? {
        didSet {
            updateViews()
        }
    }
    // seenButton not yet incorporated in this. Not sure how.
    private func updateViews() {
        guard let Movie = Movie else { return }
        titleLabel.text = Movie.movieTitle
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
