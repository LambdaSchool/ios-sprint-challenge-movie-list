//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Dennis on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieName: UILabel!
    
    @IBOutlet weak var notSeen: UIButton!
    
   var thisMovie: Movie? {
        didSet{
            updateViews()
        }
    }

    private func updateViews() {
        guard let movie = thisMovie else { return }
        movieName.text = movie.title
    }
    
    @IBAction func notSeenTapped(_ sender: UIButton) {
        sender.isSelected.toggle()
        
        if sender.isSelected {
            thisMovie?.seen = true
            notSeen.setTitle("Seen", for: .normal)
        } else if !sender.isSelected {
            thisMovie?.seen = false
            notSeen.setTitle("Not Seen", for: .normal)
        }
    }
}
    
    
    
 
    
        


    

