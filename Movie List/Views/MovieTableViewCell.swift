//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Jeremy Taylor on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
    func toggleIsSeen(for cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell, MovieControllerProtocol {
    
    

    // MARK: - Properties
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var toogleSeenButton: UIButton!
    
    weak var delegate: MovieTableViewCellDelegate?
    
    var movieController: MovieController?
    
    
    @IBAction func toggleSeen(_ sender: UIButton) {
        delegate?.toggleIsSeen(for: self)
    }
    
}
    

    
