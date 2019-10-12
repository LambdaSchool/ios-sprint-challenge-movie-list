//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Rick Wolter on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
   func seenTapped(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    
    
    weak var delegate: MovieTableViewCellDelegate?

    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenButtonLabel: UIButton!
    
    var movie: Movie? {
        didSet {
        updateViews()
    }
     }
    
    
    @IBAction func seenButtonTapped(_ sender: Any) {
           delegate?.seenTapped(on: self)
       }
    
    func updateViews() {
    
    guard let movie = movie else { return }
    movieLabel.text = movie.name
    let buttonText = movie.hasSeen ? "Seen" : "Not Seen"
    seenButtonLabel.setTitle(buttonText, for: .normal)
    
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
