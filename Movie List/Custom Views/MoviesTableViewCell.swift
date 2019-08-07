//
//  MoviesTableViewCell.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_101 on 6/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieListLabel: UILabel!
    @IBOutlet weak var isSeenLabel: UIButton!
    
    var isSeen: Bool = false
    
    var movie: Movie? {
        didSet{
            updateViews()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    private func updateViews() {
        
        guard let movie = movie else { return }
        
        movieListLabel.text = movie.moviesName
    }
    
    @IBAction func isSeenButtonPressed(_ sender: UIButton) {
        
        isSeen.toggle()
        
        guard let movie = movie else { return }
        
            isSeen.toggle()
        let isSeenString = movie.isSeen ? "Not Seen" : "Seen"
            isSeenLabel.setTitle(isSeenString, for: .normal)
    }
}
