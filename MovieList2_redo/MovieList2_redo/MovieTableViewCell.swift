//
//  MovieTableViewCell.swift
//  MovieList2_redo
//
//  Created by Craig Belinfante on 7/8/20.
//  Copyright © 2020 Craig Belinfante. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBAction func buttonTapped(_ sender: UIButton) {
        guard var unwrappedLabel = sender.titleLabel?.text else {return}
        if unwrappedLabel == "seen" {
            unwrappedLabel = "not seen"
            movie?.seen = false
        } else {
            unwrappedLabel = "Seen"
            movie?.seen = true
        }
    }
    
    private func updateViews() {
        guard let uwmovie = movie else {
            return
        }
        
        movieLabel.text = uwmovie.name
        
        if uwmovie.seen == true {
            button.setTitle("Seen", for: .normal)
        } else {
            button.setTitle("Not Seen", for: .normal)
        }
    }
    
}
