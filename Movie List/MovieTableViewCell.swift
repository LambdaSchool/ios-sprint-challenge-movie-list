//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Moin Uddin on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
    func seenButtonTapped(on cell: MovieTableViewCell)
}
class MovieTableViewCell: UITableViewCell  {

    
    func updateViews() {
        guard let movie = movie else { return }
        movieTitleLabel.text = movie.title
        movie.seen ? seenButton.setTitle("Seen", for: .normal) : seenButton.setTitle("Not Seen", for: .normal)
    }
    @IBOutlet weak var seenButton: UIButton!
    @IBOutlet weak var movieTitleLabel: UILabel!

    @IBAction func seenButtonTapped(_ sender: Any) {
        delegate?.seenButtonTapped(on: self)
    }
    
    
    weak var delegate: MovieTableViewCellDelegate?
    
    
    var movie: Movie? {
        didSet{
            updateViews()
        }
    }

}
