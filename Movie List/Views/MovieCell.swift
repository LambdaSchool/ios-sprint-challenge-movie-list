//
//  MovieCell.swift
//  Movie List
//
//  Created by Kenny on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var watchedMovieBtn: UIButton!
    @IBAction func watchedBtnTapped(_ sender: UIButton) {
        if sender == watchedMovieBtn {
            if !(movie?.didWatch ?? true) { //default set true to prevent button image from changing if movie is somehow nil
                sender.setImage(UIImage(systemName: "checkmark.rectangle.fill"), for: .normal)
                movie?.didWatch = true
            } else {
                sender.setImage(UIImage(systemName: "rectangle.badge.checkmark"), for: .normal)
                movie?.didWatch = false
            }
        }
    }
    
    var movie: Movie? {
        didSet {
            configureCell()
        }
    }
    
    func configureCell() {
        self.nameLbl.text = movie?.name
    }

}
