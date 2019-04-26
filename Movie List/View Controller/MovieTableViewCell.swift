//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Alex Ladines on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var seenOrNotSeenButtonPressed: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    
    //Change the Not Seen/Seen Button
    @IBAction func seenOrNotSeenButtonPressed(_ sender: Any) {
        let button = sender as! UIButton
        
        if button.titleLabel?.text == "Not Seen"
        {
            button.setTitle("Seen", for: .normal)
        }
        else
        {
            button.setTitle("Not Seen", for: .normal)
        }
        
    }
    
}
