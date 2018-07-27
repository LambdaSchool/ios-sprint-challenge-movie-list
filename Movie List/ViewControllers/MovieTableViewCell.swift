//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Jonathan T. Miles on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell, MovieControllerProtocol, MovieCellDelegate {
    
    private func updateViews() {
        guard let movie = movie else { return }
        titleTextLabel.text = movie.title
        
        if movie.isSeen == false {
            seenButtonText.setTitle("Seen", for: .normal)
        } else if movie.isSeen == true {
            seenButtonText.setTitle("Unseen", for: .normal)
        }
    }
    
    func seenButtonWasTapped(on cell: MovieTableViewCell) {

    }

    @IBAction func Seen(_ sender: Any) {
        delegate?.seenButtonWasTapped(on: self)
    }
    
    // MARK: - Properties
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    @IBOutlet weak var titleTextLabel: UILabel!
    @IBOutlet weak var seenButtonText: UIButton!
    
    var movieController: MovieController?
    weak var delegate: MovieCellDelegate?
}
