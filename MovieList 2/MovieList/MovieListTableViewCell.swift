//
//  MovieListTableViewCell.swift
//  MovieList
//
//  Created by Jordan Davis on 5/3/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

protocol MovieListTableViewCellDelegate: class {
    func seenButtonWasPressed(on cell: MovieListTableViewCell)
}

class MovieListTableViewCell: UITableViewCell {

    //MARK: -Actions
    
    @IBAction func seenButtonPressed(_ sender: Any) {
        print("Movie Seen")
    }
    
    //MARK: -Functions
    private func updateViews() {
        guard let movie = movie else { return }
        let seenButtonTitle = movie.isSeen ? "Not Seen" : "Seen"
        seenButton.setTitle(seenButtonTitle, for: .normal)
        
        self.movieTitleLabel.text = addMovieVC.movieTitleTextField.text
    }
    
    
    //MARK: -Properties
    
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var seenButton: UIButton!
    
    var addMovieVC = AddNewMovieViewController()
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }

}
