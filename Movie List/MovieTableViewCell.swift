//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_167 on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var seenbutton: UIButton!
    
    @IBOutlet weak var seenbuttonTapped(_ sender: Any) { seenbutton.setTitle("Seen", for: normal)
    
}
}
