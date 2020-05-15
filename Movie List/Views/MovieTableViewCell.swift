//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Violet Lavender Love on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBAction func isSeenButton(_ sender: UIButton) {
        print("is seen button tapped")
        func setTitle(_ title: String?) {
        }
        setTitle("Seen")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
