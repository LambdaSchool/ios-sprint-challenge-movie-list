//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Rick Wolter on 9/7/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit




protocol MovieListTableViewCellDelegate: class {
    func seenButtonTapped(cell: MovieListTableViewCell)
}

class MovieListTableViewCell: UITableViewCell {

    
    // MARK: - Outlets and Properties
    
    
    
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    weak var delegate: MovieListTableViewCellDelegate?
    
    var movie: Movie? {
        didSet {
           updateViews()
        }
    }
    
    
    // MARK: - Methods
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    

    func updateViews() {
            
            guard let movie = movie else {return}
            movieLabel.text = movie.movieName
            let buttonText = movie.hasSeen ? "Not Seen" : " Seen"
            seenButton.setTitle(buttonText, for: .normal)
        }
        
        
        
        // Configure the view for the selected state
    
    @IBAction func seenButton(_ sender: Any) {
        delegate?.seenButtonTapped(cell: self)
    }
    
}
