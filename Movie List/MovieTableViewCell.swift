//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Chris Dobek on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit


class MovieTableViewCell: UITableViewCell {
    
    // MARK: Properties
    var movie: Movie? {
        didSet{
            viewCell()
    }
}
    
    
    // MARK: Outlets
    @IBOutlet weak var seenButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: Actions
   @IBAction func seenButtonTapped(_ sender: Any) {
    //Seen Movie Button
        if let myMovie = movie {
            if myMovie.seen == true {
                movie?.seen = false
            } else {
                movie?.seen = true
            }
        }
        updateButton()
    }
    
    
    
    //MARK: Functions
    func viewCell() {
        if let myMovie = movie {
            titleLabel.text = myMovie.title
        }
    }
    
    func updateButton() {
        if let myMovie = movie {
            if myMovie.seen == true {
                seenButton.setTitle("Seen", for: .normal)
            } else if myMovie.seen == false {
                 seenButton.setTitle("Watch", for: .normal)
            }
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
