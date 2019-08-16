//
//  movieTableViewCell.swift
//  Movie List
//
//  Created by Alex Rhodes on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class movieTableViewCell: UITableViewCell {

    var movie: Movie? {
        didSet {
            setViews()
        }
    }
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var seenUnseenButton: UIButton!
    
    func setViews() {
        
        backgroundColor = .black
        
        titleLabel.text = movie?.name
    directorLabel.text = movie?.director
        movieImageView.image = movie?.image
        
//        releaseDateLabel.text
        
        movieImageView.backgroundColor = .gray
        
        titleLabel.text = movie?.name
        titleLabel.textColor = .white

        directorLabel.text = movie?.director
        directorLabel.textColor = .white
        
        releaseDateLabel.textColor = .white
        releaseDateLabel.text = "TBA"
        
        #warning("Set date picker label")
        
        seenUnseenButton.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0.3485707641, alpha: 1)
        seenUnseenButton.titleLabel?.text = "UNSEEN"
        seenUnseenButton.layer.cornerRadius = 12
        seenUnseenButton.setTitleColor(.white, for: .normal)
        
    }

    @IBAction func seenButtonTapped(_ sender: UIButton) {
        if sender.isEnabled == true {
            seenUnseenButton.titleLabel?.text = "Seen"
        }
    }
    
}
