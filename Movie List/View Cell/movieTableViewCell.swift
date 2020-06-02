//
//  movieTableViewCell.swift
//  Movie List
//
//  Created by Norlan Tibanear on 5/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class movieTableViewCell: UITableViewCell {
    
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var seenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateView()
        }
    }
    
    func updateView() {
        guard let movie = movie else { return }
        
        titleLabel.text = movie.title
        
        seenButton.setTitle(movie.seen ? "Seen" : "Not Seen", for: .normal)
        seenButton.setTitleColor(.white, for: .normal)
        seenButton.backgroundColor = movie.seen ? UIColor.systemBlue : UIColor.systemGray
    }
    
    @objc func toggleSeenHandler() {
        movie?.seen.toggle()
        updateView()
    }
 
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        seenButton.layer.cornerRadius = 5
        seenButton.clipsToBounds = true
        
        seenButton.addTarget(self, action: #selector(toggleSeenHandler), for: .touchUpInside)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
