//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Chris Dobek on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    var isSeen: Bool = false
    
    
    @IBAction func seenButton(_ sender: UIButton) {
        if isSeen {
        isSeen = false
            sender.setTitle("Not Seen", for: UIControl.State.normal)
        } else {
            sender.setTitle("Seen", for: UIControl.State.normal)
        }
    }
}
