//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Ian French on 4/19/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//


import UIKit

class MovieTableViewCell: UITableViewCell {

    // MARK: - IBOutlets

    
    @IBOutlet weak var hasSeenButton: UIButton!
    
    @IBOutlet weak var NameLabel: UILabel!
    
    @IBAction func hasSeenClicked(_ sender: Any) {
        self.movie?.hasSeen.toggle()
        if self.movie?.hasSeen == true  {
            self.hasSeenButton.setTitle("Seen", for:  .normal)
        } else {
            self.hasSeenButton.setTitle("Not Seen", for: .normal)
        }
    }
    
    var movie: Movie? {
        didSet {
        updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = self.movie else { return }
        NameLabel.text = movie.movieName
      
        
        
       
      
    }
    
    

    
 }

