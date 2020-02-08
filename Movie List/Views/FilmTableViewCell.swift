//
//  FilmTableViewCell.swift
//  Movie List
//
//  Created by John Holowesko on 11/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol FilmTableViewCellDelegate: class {
    func filmTableViewCellButtonTapped(_ cell: FilmTableViewCell)
}


class FilmTableViewCell: UITableViewCell {

    weak var delegate: FilmTableViewCellDelegate?
    
    // MARK: - IBOutlets
    @IBOutlet var movieNameLabel: UILabel!
    @IBOutlet var seenNotSeenButton: UIButton!
    
    // MARK: - IBActions
    @IBAction func buttonTapped(_ sender: Any) {
        delegate?.filmTableViewCellButtonTapped(self)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        movieNameLabel.text = nil
        seenNotSeenButton.setTitle(nil, for: .normal)
    }
}
