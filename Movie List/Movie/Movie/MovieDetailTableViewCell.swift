//
//  MovieDetailTableViewCell.swift
//  Movie
//
//  Created by Drew Miller on 5/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieDetailTableViewCell: UITableViewCell {

   //@IBOutlet weak var tableView: MovieDetailTableViewCell!
    
    
    //@IBOutlet weak var movieTitle: UILabel!
   @IBAction func seenUnseenButton(_ sender: UIButton) {
        sender.isSelected.toggle()
        
    }
    
    var movie: Movie? {
        didSet {
            self.updateViews()
    }
}

    private func updateViews() {
        guard let movie = self.movie else { return }
        
    }


}
