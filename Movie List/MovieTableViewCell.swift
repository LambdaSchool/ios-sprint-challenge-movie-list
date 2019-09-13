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
    
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieName.text = movie.title
    
    }
  
    @IBAction func notSeenTapped(_ sender: UIButton) {
        sender.isSelected.toggle()
        if notSeen.isSelected {
            notSeen.setTitle("Seen", for: .normal)
        }

        }
        

}
    

