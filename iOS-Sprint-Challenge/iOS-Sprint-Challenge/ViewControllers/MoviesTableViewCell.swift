//
//  MoviesTableViewCell.swift
//  iOS-Sprint-Challenge
//
//  Created by Blair Holmgren on 4/26/19.
//  Copyright © 2019 Blair Holmgren. All rights reserved.
//

import UIKit

protocol MoviesTableViewCellDelegate: class {
    func tappedSeenButton(on cell: MoviesTableViewCell)
}

class MoviesTableViewCell: UITableViewCell {

    weak var delegate: MoviesTableViewCellDelegate?
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }

    private func updateViews() {
        guard let movie = movie else { return }
        if movie.isSeen {
            seenButton.setTitle("Seen", for .normal)
        } else {
            seenButton.setTitle("Not Seen", for .normal)
        }
    }
    
}



//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
