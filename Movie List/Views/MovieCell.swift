//
//  MovieCell.swift
//  Movie List
//
//  Created by Kenny on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    @IBOutlet weak var nameLbl: UIStackView!
    @IBOutlet weak var watchedMovieBtn: UIButton!
    @IBAction func watchedBtnTapped(_ sender: UIButton) {
        if sender == watchedMovieBtn {
            if #available(iOS 13.0, *) {
                sender.setImage(UIImage(systemName: ""), for: .normal)
            } else {
                sender.setIm
            }
        }
    }
    
    
    var delegate: AddMovieDelegate?
    
    func configureCell() {
        
    }

}
