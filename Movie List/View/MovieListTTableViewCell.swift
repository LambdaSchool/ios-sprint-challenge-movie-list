//
//  MovieListTTableViewCell.swift
//  Movie List
//
//  Created by Harmony Radley on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol MovieListTableViewCellDelegate {
    func seenButtonTapped(_ onCell: MovieListTTableViewCell)
}

class MovieListTTableViewCell: UITableViewCell {



    
    @IBOutlet weak var seenButton: UIButton!
    @IBOutlet weak var movieName: UILabel!
    @IBAction func seenButtonTapped(_ sender: UIButton) {
        
        delegate?.seenButtonTapped(self)
    }
    
   var movie: Movie? {
       didSet {
           updateViews()
       }
   }

    
    var delegate: MovieListTableViewCellDelegate?
    
    private func updateViews() {
           guard let movie = movie  else { return }
           
           movieName.text = movie.name
           
           if movie.seen == true {
               seenButton.setTitle("Seen", for: [])
           } else {
               seenButton.setTitle("Not Seen", for: [])
           }
    
    }
}
