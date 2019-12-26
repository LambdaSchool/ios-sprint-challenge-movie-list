//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_220 on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewCell: UITableViewCell
{
    
    var movie: Movie?
    {
        didSet
        {
            updateViews()
        }
    }
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    @IBOutlet weak var hasSeenButton: UIButton!
    
    private func updateViews()
    {
        guard let movie = movie else {return}
        movieTitleLabel.text = movie.movieTitle
    }
    
    @IBAction func hasSeenButtonTapped(_ sender: UIButton)
    {
        hasSeenButton.isSelected.toggle()
        if sender.isSelected
        {
            sender.setTitle("Has Seen", for: .normal)
        }
        else
        {
            sender.setTitle("Has Not Seen", for: .normal)
        }
        
    }
    
}
