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
        guard var movie = movie else { return }
        
        movie.seen = !movie.seen
        
        //BUGBUG: This will let you change the state of seen once.
        // How do I change the source object?
        // How do I change the parent object in MovieListViewController? Delegate?
        //let buttonText = movie.seen == true ? "Seen" : "Not Seen"
        //seen.setTitle(buttonText, for: .normal)
        
        // This is ugly but I'm gonna do it.
        let buttonText = seen.currentTitle! == "Not Seen" ? "Seen" : "Not Seen"
        seen.setTitle(buttonText, for: .normal)
        
        // updateViews()
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
