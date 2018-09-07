//
//  MoviesTableViewCell.swift
//  MovieList2
//
//  Created by Welinkton on 9/7/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

protocol MovieTableCellDelegate: class {
    func updateMovieCell(for cell: MoviesTableViewCell)
}

class MoviesTableViewCell: UITableViewCell {

    weak var delegate: MovieTableCellDelegate?
    
    func updateViews() {
    
        guard let movie = movie else {return}
            
            movieName.text = movie.name
        
        
        movie.isSeen ? seenButton.setTitle("Seen ", for: .normal) : seenButton.setTitle("Not Seen", for: .normal)
        
//        if movie.isSeen {
//            seenButton.setTitle("Seen", for: .normal)
//        } else {
//            seenButton.setTitle("Not Seen Yet", for: .normal)
//        }
        
        
    }
    
    var movie: Movie? {
            didSet {updateViews()}
        }
    
    
    @IBAction func seenToggle(_ sender: Any) {
     
        delegate?.updateMovieCell(for: self)
        
    }
    
    @IBOutlet weak var movieName: UILabel!
    
    @IBOutlet weak var seenButton: UIButton!
    
}
