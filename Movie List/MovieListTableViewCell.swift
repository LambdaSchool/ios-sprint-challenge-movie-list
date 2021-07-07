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
    
    var delegate : MovieListTableViewCellDelegate?
    
    @IBAction func seenButtonTapped(_ sender: Any) {
        self.delegate?.seenButtonAction(for: self)
    }

    
    func updateView() {
        guard let movieNames = names?.name else {return}
        movieNameLabel.text = movieNames
        
         if names?.seen == false {
         self.seenButton.setTitle("Not seen", for: .normal)
         } else {
         self.seenButton.setTitle("Seen", for: .normal)
         }

    }
    
}
