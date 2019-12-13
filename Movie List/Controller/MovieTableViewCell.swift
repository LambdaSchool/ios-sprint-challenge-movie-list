//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Lambda_School_loaner_226 on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell
{

    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var hasSeenButton: UIButton!
    
    var movie: Movie?
    {
        didSet
        {
            updateViews()
        }
    }
    
    func updateViews()
    {
        guard let movie = movie else {return}
        movieLabel.text = movie.movieName
    }
    
    @IBAction func hasSeenButtonTapped(_ sender: UIButton)
    {
        hasSeenButton.isSelected.toggle()
        if sender.isSelected
        {
            sender.setTitle("SEEN", for: .normal)
        }
        else
        {
            sender.setTitle("HAS NOT SEEN", for: .normal)
        }
    }
    
    
}
