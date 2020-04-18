//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Hannah Bain on 4/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
class Movie {
var movieName: String
var seen: Bool

init(movieName: String, seen: Bool) {
    self.movieName = movieName
    self.seen = seen
}
    func movieList() {
        
    }

}

