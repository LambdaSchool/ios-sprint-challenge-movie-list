//
//  MovieTableViewCell.swift
//  Movie
//
//  Created by Diante Lewis-Jolley on 4/26/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit


protocol MovieTableViewCellDelegate: class {
    func wasSeenButtonTapped(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell, MoviePresenter {




    @IBAction func wasSeenButtonTapped(_ sender: Any) {

        delegate?.wasSeenButtonTapped(on: self)

    }

    private func updateView() {

        guard let movieText = movieLabel.text else { return }

        if let movie = movie {
            movieController?.update(movie: movie, film: movieText)
        } else {
            movieController?.create(movie: movieText)
        }

        guard let movie = movie else { return }
        if movie.wasSeen == true {
            wasSeenButton.setTitle("notSeen", for: .normal)
        } else {
            if movie.wasSeen == false {
                wasSeenButton.setTitle("seen", for: .normal)
            }
        }
    }
    
    

    @IBOutlet weak var movieLabel: UILabel!
    var delegate: MovieTableViewCellDelegate?
    @IBOutlet weak var wasSeenButton: UIButton!
    var movieController: MovieController?
    var movie: Movie? {
        didSet {
            updateView()
        }
    }
}
