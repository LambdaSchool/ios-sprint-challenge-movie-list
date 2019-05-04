//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Dongwoo Pae on 5/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewCell: UITableViewCell {
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var seenButton: UIButton!
    
    var names: Movie? {
        didSet {
            updateView()
        }
    }
    
    
    
    
    
    
    
    @IBAction func seenButtonTapped(_ sender: Any) {
    }

    
    func updateView() {
        guard let movieNames = names?.name else {return}
        movieNameLabel.text = movieNames
    }
    
}
