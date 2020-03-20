//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by ronald huston jr on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //  initializtion code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        //  configure the view for the selected state
    }
    
    @IBAction func seenButtonTapped(_ sender: Any) {
        let unseenTitle = "Unseen"
        let seenTitle = "Seen"
        seenButton.setTitle(seenTitle, for: .normal) 
        print(seenButton.titleLabel?.text)
        if let buttonText = seenButton.titleLabel?.text {
            if buttonText == "Seen" { 
                seenButton.setTitle(unseenTitle, for: .normal)
            }
        }
    }
}
