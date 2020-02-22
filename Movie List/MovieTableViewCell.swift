//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Mark Gerrior on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var seen: UIButton!
    
    @IBAction func seenButton(_ sender: Any) {
        guard let movie = movie else { return }
        
        movie.seen = !movie.seen
        
        updateViews()
    }

    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let movie = movie else { return }
        
        title.text = movie.title
        
        let buttonText = movie.seen == true ? "Seen" : "Not Seen"
        seen.setTitle(buttonText, for: .normal)
    }
}
