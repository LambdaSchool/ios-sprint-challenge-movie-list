//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Iyin Raphael on 8/3/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieListViewCellDelegate: class {
    func seenButtonWasTapped(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    
    private func updateView() {
        
        guard let movie = movieName else {return}
        print("\(String(movie.name))")
        if movie.isSeen == false {
            seenButton.setTitle("Not Seen", for: .normal)
        } else {
            seenButton.setTitle("Seen", for: .normal)
        }
        movieLabel.text = movie.name
    }
    

    
    @IBAction func buttonTapped(_ sender: Any) {
        delegate?.seenButtonWasTapped(on: self)
    }
    
    var movieName: MovieName? {
        didSet{
            updateView()
        }
    }
        
    weak var delegate: MovieListViewCellDelegate?
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
}
