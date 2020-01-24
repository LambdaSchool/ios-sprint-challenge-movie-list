//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Enrique Gongora on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    @IBAction func seenButtonTapped(_ sender: UIButton) {
        movie?.seen.toggle()
        updateViews()
    }
    
    var movie: Movie?{
        didSet{
            updateViews()
        }
    }
    
    private func updateViews(){
        guard let unwrappedMovie = movie else {return}
        titleLabel.text = unwrappedMovie.name
        if unwrappedMovie.seen == true{
            seenButton.setTitle("Seen", for: .normal)
        }else{
            seenButton.setTitle("Not Seen", for: .normal)
        }
    }

}
