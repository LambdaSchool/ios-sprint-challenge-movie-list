//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Joseph Rogers on 8/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    var movie: Movies? {
        didSet {
            updateViews()
        }
    }
    private func updateViews(){
        guard let movie = movie else {return}
        
        movieNameLabel.text = movie.name
    }
    
    @IBAction func btnAction(_ sender: UIButton) {
        sender.setTitle("Seen", for: .normal) 
    }
}


