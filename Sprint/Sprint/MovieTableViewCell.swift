//
//  MovieTableCellTableViewCell.swift
//  Sprint
//
//  Created by Stephanie Bowles on 5/6/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import UIKit


protocol MovieTableViewCellDelegate: class {
    func seenButtonWasTapped(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    var movie : Movie? {
        didSet {
            updateViews()
        }
    }
    func updateViews() {
        guard let movie = movie else {return}
        movieLabel.text = movie.name
        if(movie.isSeen){
            seenButton.setTitle("Not Seen", for: .normal)
        } else {
            seenButton.setTitle("Seen", for: .normal)
        }
    }
    weak var delegate: MovieTableViewCellDelegate?
    @IBAction func seenButtonTapped(_ sender: Any) {
        self.delegate?.seenButtonWasTapped(on: self)
    }
    
    
 
    

}
