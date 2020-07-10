//
//  MovieTableViewCell.swift
//  MovieList2_redo
//
//  Created by Craig Belinfante on 7/8/20.
//  Copyright © 2020 Craig Belinfante. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // Configure the view for the selected
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBAction func buttonTapped(_ sender: UIButton) {
       /* if var unwrappedLabel = sender.titleLabel?.text {
         if unwrappedLabel == "seen" {
            unwrappedLabel = "Not Seen"
            movie?.seen = false
        } else {
            unwrappedLabel = "seen"
            movie?.seen = true
        }*/
        movie?.seen.toggle()
        
            if movie?.seen == true {
                         button.setTitle("Seen", for: .normal)
                     } else {
                         button.setTitle("Not Seen", for: .normal)
                     }
          
    }
   // }
    private func updateViews() {
        guard let uwmovie = movie else {
            return
        }
        
        movieLabel.text = uwmovie.name
       
        
    }
    
}

