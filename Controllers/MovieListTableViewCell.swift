//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Ilgar Ilyasov on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieListTableViewCellDelegate: class {
    
    func seenUnseenAction(for cell: MovieListTableViewCell)
}

class MovieListTableViewCell: UITableViewCell {

    @IBAction func seenUnseenAction(_ sender: Any) {
        delegate?.seenUnseenAction(for: self)
    }
    
    private func updateViews() {
        
        guard let movie = movie else { return }
        movieListLabel.text = movie.movieName
        
        let seenUnseen = movie.isSeen ? "Seen" : "Not Seen"
        seenUnseenButton.setTitle(seenUnseen, for: .normal)
    }

    var movie: Movie? {
        didSet { updateViews() }
    }
    
    weak var delegate: MovieListTableViewCellDelegate?
    
    @IBOutlet weak var seenUnseenButton: UIButton!
    @IBOutlet weak var movieListLabel: UILabel!
    
}
