//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by macbook on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTextField: UITextField!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //seenButtonPressed.title
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    // TODO : - Configure the Seen / Not Seen Button
    
    @IBAction func seenButtonPressed(_ sender: Any) {
//        if let buttonTitle = (sender as AnyObject).currentTitle {
//            buttonTitle.title
//            
//             //buttonTitle.setTitle("Not Seen",for: .normal)
//            
//            
//            
//           // buttonTitle?.titl = "Seen"
//           // brain?.setOperator(buttonTitle)
            
        }
        
    }
}
