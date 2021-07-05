//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Joseph Rogers on 8/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    //MARK: - Outlets
    @IBOutlet weak var movieNameLabel: UILabel!
    
    //MARK: - Properties
    var movie: Movies? {
        didSet {
            updateViews()
        }
    }
    //MARK: - Functions
    private func updateViews(){
        guard let movie = movie else {return}
        
        movieNameLabel.text = movie.name
    }
    
    //MARK: - Actions
    @IBAction func btnAction(_ sender: UIButton) {
        if sender.titleLabel?.text == "Seen" {
            sender.setTitle("Not Seen", for: .normal)
        }else {
            sender.setTitle("Seen", for: .normal)
        }
    }
}


