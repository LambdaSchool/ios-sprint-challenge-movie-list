//
//  MovieCellInfo.swift
//  MovieList
//
//  Created by Rohan Taylor on 12/13/19.
//  Copyright © 2019 Rohan Taylor. All rights reserved.
//

import UIKit

class MovieCellInfo: UITableViewCell {

    
    @IBOutlet weak var titleUILabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    

    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
   @IBAction func seenButton(_ sender: Any) {
        if let movie = movie {
           movie.beenSeen.toggle()
           updateViews()
    
}
}


    func updateViews() {
        if let movie = movie {
            titleUILabel.text = movie.name
            if movie.beenSeen == false {
                seenButton.setTitle("Not Seen", for: .normal)
            } else {
                seenButton.setTitle("Seen", for: .normal)
            }
        }
    }
}
