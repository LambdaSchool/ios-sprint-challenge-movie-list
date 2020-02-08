//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Elizabeth Thomas on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var seenButton: UIButton!
    @IBOutlet weak var movieLabel: UILabel!
    
    
    // MARK: - IBActions
//    var isTapped = true
    @IBAction func seenButtonTapped(_ sender: UIButton) {
        
        seenButton.isSelected.toggle()
        
        if seenButton.isSelected == true {
            seenButton.setTitle("Seen", for: .normal)
        } else {
            seenButton.setTitle("Not Seen", for: .normal)
        }
        
//        if seenButton.isSelected == true {
//            seenButton.isSelected = false
//            seenButton.setTitle("Seen", for: .normal)
//        } else if seenButton.isSelected == false {
//                seenButton.isSelected = true
//                seenButton.setTitle("Not Seen", for: .normal)
//            }
//        }

        
//        isTapped != isTapped
        
//        if isTapped {
//            sender.setTitle("Seen", for: .normal)
//        } else {
//            sender.setTitle("Not Seen", for: .normal)
//        }
    }
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        movieLabel.text = movie.name
        
    }

}

