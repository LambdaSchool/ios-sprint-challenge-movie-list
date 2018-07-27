//
//  MovieCell.swift
//  Movies
//
//  Created by Simon Elhoej Steinmejer on 27/07/18.
//  Copyright © 2018 Simon Elhoej Steinmejer. All rights reserved.
//

import UIKit

protocol MovieCellDelegate: class
{
    func changeValueForDidWatch(forMovie movie: Movie)
}

class MovieCell: UITableViewCell
{
    //MARK: - Properties
    
    weak var delegate: MovieCellDelegate?
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    var movie: Movie?
    {
        didSet
        {
            guard let movie = movie else { return }
            handleCellUpdates(movie: movie)
        }
    }

    //MARK: - Functions
    
    @IBAction func handleSeenButton(_ sender: Any)
    {
        guard let movie = movie else { return }
        delegate?.changeValueForDidWatch(forMovie: movie)
    }
    
    private func handleCellUpdates(movie: Movie)
    {
        movieTitleLabel.text = movie.name
        seenButton.setTitle(movie.didWatch ? "Seen" : "Unseen", for: .normal)
    }
}






















