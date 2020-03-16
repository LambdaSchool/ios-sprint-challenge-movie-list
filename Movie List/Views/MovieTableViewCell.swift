//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Matthew Martindale on 2/8/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

//protocol MovieTableViewCellDelegate {
//    func editButtonTapped(_ onCell: MovieTableViewCell)
//}

class MovieTableViewCell: UITableViewCell {
    
    var movie: Movie? {
        didSet {
            self.updateView()
        }
    }
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var hasBeenWatchedTapped: UIButton!
    @IBOutlet weak var clapBoard: UIImageView!
    @IBAction func hasBeenWatchedButton(_ sender: Any) {
        hasBeenWatchedTapped.setTitle("Watched", for: .normal)
        movie?.hasBeenWatched = true
        clapBoard.isHidden = false
    }
    
//    var delegate: MovieTableViewCellDelegate?
    
//    @IBAction func editButtonTapped(_ sender: Any) {
//        delegate?.editButtonTapped(self)
//    }
    
    private func updateView() {
        guard let movie = movie else { return }
        movieTitleLabel.text = movie.name
    }
}
