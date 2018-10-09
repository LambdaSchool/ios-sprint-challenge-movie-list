//
//  MovieSeenViewController.swift
//  Movie List
//
//  Created by Yvette Zhukovsky on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit


protocol MovieSeenViewController:class {
    
    func seenMovie(for cell: MovieViewCell)
}

class MovieViewCell: UITableViewCell {
    
    @IBAction func seenbutton(_ sender: Any) {
        delegate?.seenMovie(for: self)

    }

    private func update() {
       
}
    
    weak var delegate: MovieSeenViewController?
    
   
    
    
    
}

