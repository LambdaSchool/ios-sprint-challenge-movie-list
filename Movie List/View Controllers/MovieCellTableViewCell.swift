//
//  MovieCellTableViewCell.swift
//  Movie List
//
//  Created by Kelson Hartle on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol  DidWatchDelegate {
    func didWatch(title: String)
}

class MovieCellTableViewCell: UITableViewCell {

   //Outlet
    @IBOutlet weak var cellMovieLabel: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    
    var movie: MovieStruct? {
        didSet {
            updateViews()
        }
        
    }
    var delegate: DidWatchDelegate?
    
    func updateViews() {
        guard let movie = movie else { return }
        
        cellMovieLabel.text = movie.movie
        let title = movie.hasSeen ? "Not Seen" : "Seen"
        buttonOne.setTitle(title, for: .normal)
        
    }
    
    //Action
    @IBAction func seenOrNotSeenButton(_ sender: Any) {
        
        if !buttonOne.isSelected {
            buttonOne.setTitle("Not Seen", for: .normal)
        } else if buttonOne.isSelected {
            buttonOne.setTitle("Seen", for: .normal)
        }
            
            
        }
        
    }
    
    
    
    


