//
//  MovieListTTableViewCell.swift
//  Movie List
//
//  Created by Harmony Radley on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.


import UIKit

class MovieListTTableViewCell: UITableViewCell {

    @IBOutlet weak var seenButton: UIButton!
    @IBOutlet weak var movieName: UILabel!
   
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    @IBAction func seenButtonTapped(_ sender: Any) {
        guard var movie = movie else { return }
        
        movie.seen = !movie.seen
        
        let buttonTapped = seenButton.currentTitle! == "Not Seen" ? "Seen" : "Not Seen"
            seenButton.setTitle(buttonTapped, for: .normal)
    }

    
    func updateViews() {
           guard let movie = movie  else { return }
           
           movieName.text = movie.name
           
           if movie.seen == true {
               seenButton.setTitle("Seen", for: [])
           } else {
               seenButton.setTitle("Not Seen", for: [])
           }
    
    }
}
