//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_218 on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    weak var delegate: MovieWasAddedDelegate?
    //updateViews
    @IBAction func seenBtn(_ sender: Any) {
        delegate?.updateHasSeen(movie: <#T##Movies#>)
    }
    
    // movie: Movie?{
    @IBOutlet weak var movieLabel: UILabel!
    var movie: Movies? {
        didSet {
            updateViews()
            
        }
    }
    
    func updateViews() {
        guard let movie = movie else { return }
        movieLabel.text = movie.title
    
        
       // More stuff here for hasSeen button
        
        let hasSeen = movie.isSeen ? "seen" : "not seen"
        
        
        
    }
}
