//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Nonye on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

    
import UIKit


class MovieTableViewCell: UITableViewCell {
    

//MARK: OUTLETS
    @IBOutlet weak var movieLabel: UILabel!
    
   @IBOutlet weak var seenOption: UIButton!
   
    @IBAction func seenOptionClicked(_ sender: Any) {
        if seenOption.isSelected == true {
            seenOption.setTitle("Seen", for: .normal)
            seenOption.isSelected = false
        } else {
            seenOption.setTitle("Not Seen", for: .normal)
            seenOption.isSelected = true
        }
    }
}
