//
//  MovieCellTableViewCell.swift
//  Movie List
//
//  Created by Clayton Watkins on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieCellTableViewCell: UITableViewCell {

    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var hasSeenMovieButton: UIButton!
    
    var movie: Movie?{
             didSet{
                 updateViews()
             }
         }
    
    // This will allow our button to change on it's boolean value
    @IBAction func hasSeenMovieTapped(_ sender: Any) {
        movie?.movieSeen.toggle()
    }
    
 
    private func updateViews(){
        guard let movie = self.movie else {return}
        movieNameLabel.text = movie.movieName
        //We are setting the title base on whether our bool is true or false
        hasSeenMovieButton.setTitle(movie.movieSeen ? "Seen" : "Not Seen", for: .normal)
    }
}
