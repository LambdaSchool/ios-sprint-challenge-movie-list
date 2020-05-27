//
//  MoviesListTableViewCell.swift
//  Movie List
//
//  Created by Mike Nichols on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit


class MoviesListTableViewCell: UITableViewCell, UITableViewDelegate {

        
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    weak var delegate: ListMoviesDelegate?
    
    @IBAction func haveSeenButtonTapped(_ sender: UIButton) {
        if seenButton.isSelected.self == true {
            seenButton.isSelected.self = false
            updateView()
        } else {
            seenButton.isSelected.self = true
            updateView()
        }
    }
}

extension MoviesListTableViewCell: ListMoviesDelegate {
    func updateView() {
        delegate?.updateView()
    }

}
