//
//  MoviesTableViewCell.swift
//  Movie List
//
//  Created by Daniela Parra on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableCellDelegate: class {
    func updateCell(for cell: MoviesTableViewCell)
}

class MoviesTableViewCell: UITableViewCell {
    /*
    func updateViews() {
        guard let movie = movie else {return}
        if movie.hasBeenSeen == true {
            hasBeenSeen.setTitle("Seen", for: .normal)
        } else {
            hasBeenSeen.setTitle("Unseen", for: .normal)
        }
    }
    */
    
    @IBAction func changeSeenStatus(_ sender: Any) {
        delegate?.updateCell(for: self)
    }
    
   //var movie: Movie? {
     //   didSet {
            //updateViews()
       // }
    //}
    
    weak var delegate: MovieTableCellDelegate?
    
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var hasBeenSeen: UIButton!
    
}
