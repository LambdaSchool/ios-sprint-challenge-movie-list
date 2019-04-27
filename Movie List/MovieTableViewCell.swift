//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Ryan Murphy on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit


let movieController = MovieController()


class MovieTableViewCell: UITableViewCell {
   
    @IBOutlet var movieNameLabel: UILabel!
    
    @IBOutlet var movieStatusButton: UIButton!
     
    

    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieNameLabel.text = movie.name
 
    }
    
    
    @IBAction func movieStatusButtonTapped(_ sender: Any) {
        
        
        
        movieStatusButton.titleLabel?.text = "Watched" ?? "Not Watched"
   
        
    
}
}
        


       



