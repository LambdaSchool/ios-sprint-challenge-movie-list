//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Nonye on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

    
import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!
    
    @IBOutlet weak var seenButton: UIButton!
    var movieArray: [Movies] = []
    var movieList: Movies? {
        didSet {
            func updateViews() {
                guard let unwrappedMovie = movieList else { return }
   
}

      }

 

}
}

