//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Michael Flowers on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
    func tappedSeenButton(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {

    var movie: Movie?{
        didSet {
            updateViews()
        }
    }
    weak var delegate: MovieTableViewCellDelegate?
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var seenButtonProperties: UIButton!

    @IBAction func seenButtonPressed(_ sender: UIButton) {
        //alert our delegate that somethng has happened. i.e. this button was pressed.
        delegate?.tappedSeenButton(on: self)
        
    }
    
    private func updateViews(){
        
        //check to see if its a legit movie
        guard let passedInMovie = movie else { return }
        
        //set the text of the label to reflect to name of the movie
        movieTitleLabel.text = passedInMovie.title
        
        //set the button title based on the boolean value of hasSeen
        let seenButtonTitle = passedInMovie.hasSeen ? "Seen" : "Not Seen"
        seenButtonProperties.setTitle(seenButtonTitle, for: .normal)
    }
}
