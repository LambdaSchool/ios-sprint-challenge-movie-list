//
//  AddMovieCell.swift
//  Movie List
//
//  Created by Carolyn Lea on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieCellDelegate: class {
    
    func didTapSeenButton(_ sender: AddMovieCell)
}

class AddMovieCell: UITableViewCell {

    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var seenButton: UIButton!
    
    weak var delegate: AddMovieCellDelegate?
    
    @IBAction func toggleSeenButton(_ sender: UIButton) {
        delegate?.didTapSeenButton(self)
        
        
    }
}
