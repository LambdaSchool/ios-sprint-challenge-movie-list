//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_141 on 8/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var seenButton: UIButton!
    
    @IBAction func seenButtonTapped(_ sender: Any) {
        if movie?.seen == false {
            seenButton.setTitle("Not Seen", for: .normal)
            movie?.seen = true
        } else {
            seenButton.setTitle("Seen", for: .normal)
            movie?.seen = false
        }
        
    }
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }

    
    private func updateViews() {
        guard let movie = movie else { return }
        
        nameLabel.text = movie.name
        
        
        
//         if seenButton.isSelected {
//            seenButton.isSelected.toggle()
//        }
//        if movie.seen {
//            seenButton.isSelected = true
//        } else {
//            seenButton.isSelected = false
//        }
//
//        if seenButton.isSelected == true {
//            seenButton.titleLabel?.text = "Seen"
//        } else if seenButton.isSelected == false {
//            seenButton.titleLabel?.text = "Not seen"
//        }
        
//        if seenButton.isEnabled {
//            movie.seen = false
//        }
//        else {
//            movie.seen = true
//        }
//
//        if movie.seen == false {
//            seenButton.titleLabel?.text = "Not Seen"
//        }
//        else if movie.seen == true {
//                seenButton.titleLabel?.text = "Seen"
//        }
       
        
    }
}
