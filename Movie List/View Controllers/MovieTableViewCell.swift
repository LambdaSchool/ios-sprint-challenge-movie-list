//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Chad Parker on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var seenLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
