//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Jeremy Taylor on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell, MovieControllerProtocol {
    
    

    // MARK: - Properties
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var toogleSeenButton: UIButton!
    
    var movieController: MovieController?
    var title = ""
    
    @IBAction func toggleSeen(_ sender: UIButton) {
        let index = (sender.tag)
        guard let movie = movieController?.movies[index] else { return }
        movieController?.toogleSeen(movie: movie)
        
        if movie.seen {
            title = "Not Seen"
        } else {
            title = "Seen"
        }
        
         toogleSeenButton.setTitle(title, for: .normal)
        
    }
    
}
    

    
