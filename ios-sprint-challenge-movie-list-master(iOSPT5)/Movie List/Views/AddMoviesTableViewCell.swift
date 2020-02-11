//
//  AddMoviesTableViewCell.swift
//  Movie List
//
//  Created by David Williams on 2/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class AddMoviesTableViewCell: UITableViewCell, UITextFieldDelegate {

    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieYearLabel: UILabel!
    
    var movie: Movie? {
        didSet {
            self.updateViews()
        }
    }
    
    
    private func updateViews() {
        guard let movie = movie else { return }
        movieNameLabel.text = movie.name
//        if movieYearLabel.text == nil {
//            movieYearLabel.text = ""
//        } else if movieYearLabel.text != nil {
            movieYearLabel.text = movie.year + "'s "
        //}
    }
}
