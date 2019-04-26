//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Christopher Aronson on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit



class MovieTableViewCell: UITableViewCell, MoviesPresenter {
    var movieController: MovieController?
    var delegate: CellDelegate?
    

    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func seenButtonPressed(_ sender: Any) {
        delegate?.cellButtonTapped(cell: self)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


