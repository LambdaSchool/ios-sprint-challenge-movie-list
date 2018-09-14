//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Madison Waters on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieListViewCellDelegate: class {
    
    func showMovie(for cell: MovieListTableViewCell)
}

class MovieListTableViewCell: UITableViewCell {

    
    @IBAction func SeenButton(_ sender: Any) {
    }
    
    func updateViews () {
        
        guard let movie = movie else { return }
        
        MovieListLabel.text = movie.title
    }
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    weak var delegate: MovieListViewCellDelegate?
    
    @IBOutlet weak var MovieListLabel: UILabel!
}
