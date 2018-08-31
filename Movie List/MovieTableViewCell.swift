//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Farhan on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
    
    func seenSwitch(on cell: MovieTableViewCell)
}


class MovieTableViewCell: UITableViewCell {

    weak var delegate: MovieTableViewCellDelegate?
    
    var movie: Movie? {
        didSet {updateViews()}
    }
    
    func updateViews(){
        
        guard let movie = movie else {return}
        
        movieTitle.text = movie.title
        
        if movie.isSeen {
            seenButton.setTitle("🙈", for: UIControlState.normal)
        } else {
            seenButton.setTitle("🐵", for: UIControlState.normal)
        }
        
        
    
    }
    

    @IBAction func seenSwitch(_ sender: Any) {
        delegate?.seenSwitch(on: self)
    }
    @IBOutlet weak var seenButton: UIButton!
    
    @IBOutlet weak var movieTitle: UILabel!


    
}
