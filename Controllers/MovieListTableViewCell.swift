//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Ilgar Ilyasov on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func seenUnseenAction(_ sender: Any) {
        
    }
    
    @IBOutlet weak var movieListLabel: UILabel!
    @IBOutlet weak var seenUnseenButton: UIButton!
}
