//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Drew Miller on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenUnseenButton: UIButton!
    
    func setMovie(movie: Movie) -> Movie {
        movieLabel.text = movie.name
        seenUnseenButton.isSelected = movie.seen
        return movie
    }
    
    
    //override func awakeFromNib() {
     //   super.awakeFromNib()
        // Initialization code
    }

 //   override func setSelected(_ selected: Bool, animated: Bool) {
     //   super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    


