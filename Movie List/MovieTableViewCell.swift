//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Cameron Collins on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    //Variables
    var movie: Movie? {
        didSet {
            viewCell()
        }
    }
    
    //Object| Outlets
    @IBOutlet weak var labelMovie: UILabel!
    @IBOutlet weak var buttonSeen: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //Object| Actions
    @IBAction func buttonPressed(_ sender: Any) {
        
        //Seen Movie Button
        if let myMovie = movie {
            if myMovie.seen == true {
                movie?.seen = false
            } else {
                movie?.seen = true
            }
        }
        updateButton()
    }
    
    
    
    //Functions
    func viewCell() {
        if let myMovie = movie {
            labelMovie.text = myMovie.name
        }
    }
    
    func updateButton() {
        if let myMovie = movie {
            if myMovie.seen == true {
                buttonSeen.setTitle("Seen", for: .normal)
            } else if myMovie.seen == false {
                 buttonSeen.setTitle("Not Seen", for: .normal)
            }
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
