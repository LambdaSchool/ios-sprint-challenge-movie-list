//
//  AddMovieCell.swift
//  Movie List
//
//  Created by Carolyn Lea on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieCellDelegate: class {
    func seenButtonWasTapped(on cell: AddMovieCell)
}

class AddMovieCell: UITableViewCell {

    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var seenButton: UIButton!
    
    weak var delegate: AddMovieCellDelegate?
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    

    @IBAction func seen(_ sender: Any) {

        delegate?.seenButtonWasTapped(on: self)
    }


    private func updateViews() {
        
        guard let movie  = movie else {return}
        movieNameLabel.text = movie.movieName
        var seenbuttonTitle: String

        if !movie.hasSeen {
            seenbuttonTitle = "Seen"
        } else {
            seenbuttonTitle = "UnSeen"
        }

        seenButton.setTitle(seenbuttonTitle, for: .normal)
    }
}
