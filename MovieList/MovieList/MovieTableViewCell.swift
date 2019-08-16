//
//  MovieTableViewCell.swift
//  MovieList
//
//  Created by Joshua Franklin on 8/16/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!
    
    @IBAction func notSeenTapped(_ sender: Any) {
    }
    
    
    var movie: Movie?{
        
        didSet {
            updateViews()
        }
    }
    
   private func updateViews()  {
    
    guard let movie = movie else  {return}
    
    movieLabel.text = movie.title
    
    }
  }

