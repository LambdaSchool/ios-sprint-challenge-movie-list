//
//  MovieTableViewCell.swift
//  MovieList
//
//  Created by Bradley Yin on 7/19/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

import UIKit
import SwipeCellKit

class MovieTableViewCell: SwipeTableViewCell {
    var movie : Movie? {
        didSet{
            updateView()
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    private func updateView(){
        guard let movie = movie else{
            return
        }
        self.textLabel?.text = movie.name
        self.detailTextLabel?.text = movie.haveSeen ? "Seen" : "Not Seen"
        
    }

}
