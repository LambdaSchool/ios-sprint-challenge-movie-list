//
//  seenTableViewCell.swift
//  Movie List
//
//  Created by Zack Larsen on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class seenTableViewCell: UITableViewCell {
    
    var movie: Movie? {
    didSet {
        updateViews()
        
        }
    }
    
    weak var delegate: MovieListDelegate?
    
   
    
    
    @IBOutlet weak var seenButton: UIButton!
    
    
       @IBAction func seenButtonTapped(_ sender: Any) {
           delegate?.toggleSeenButton(on: self)
    }

private func updateViews() {
    guard let movie = movie else { return }

    let seenButtonTitle = movie.seen ? "Seen" : "Not Seen"
    seenButton.setTitle(seenButtonTitle, for: [])

    if movie.seen == true {
        seenButton.backgroundColor = UIColor.white
    } else if movie.seen == false {
        seenButton.backgroundColor = UIColor.darkGray
        seenButton.tintColor = UIColor.white
        }
    }
}
