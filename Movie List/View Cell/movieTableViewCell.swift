//
//  movieTableViewCell.swift
//  Movie List
//
//  Created by Norlan Tibanear on 5/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class movieTableViewCell: UITableViewCell {
    
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var seenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateView()
        }
    }
    
    func updateView() {
        guard let movie = movie else { return }
        
        titleLabel.text = movie.title
        
        if movie.seen == true {
            seenButton.setTitle("Seen", for: .normal)
        } else {
            seenButton.setTitle("Not Seen", for: .normal)
        }
    }
    
    
    @IBAction func seenBtn_TouchUpInside(_ sender: UIButton) {
        
        movie?.seen.toggle()
        
        if movie?.seen == true {
            seenButton.setTitle("Seen", for: .normal)
        } else {
            seenButton.setTitle("Not Seen", for: .normal)
        }
        
    }
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
