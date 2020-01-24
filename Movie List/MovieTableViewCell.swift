//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by beth on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!




    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    @IBAction func seenButton(_ sender: UIButton) {

        if MovieViewModel.shared.seen {

            MovieViewModel.shared.changeSeen(value: false)
            sender.setTitle("Not Seen", for: .normal)

        } else {

            MovieViewModel.shared.changeSeen(value: true)
            sender.setTitle("Seen", for: .normal)
        }

    }

}
