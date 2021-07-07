//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Joshua Sharp on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieSeen: UISwitch!
    
    
    var movie:Movie? {
        didSet{
            updateViews ()
        }
    }
    
    @IBAction func movieCellValueChanged(_ sender: UISwitch) {
        guard let movie = movie else {return}
        movie.seen = sender.isOn
    }
    
    private func updateViews() {
        guard let movie = movie else {return}
        movieName.text = movie.name
        movieSeen.setOn(movie.seen, animated: true)
        
    }
}
