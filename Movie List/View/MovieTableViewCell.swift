//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Karen Rodriguez on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    
    @IBAction func editIsTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Edit movie title", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addTextField(configurationHandler: { textfield in
            textfield.text = self.movie?.name
        })
        alert.addAction(UIAlertAction(title: "Save", style: .default, handler: { _ in
                if var text = alert.textFields![0].text {
                    self.movie?.name = text
                }
            }))
        
    }
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var isSeenTitle: UIButton!
    @IBAction func isSeenTapped(_ sender: UIButton) {
        
        self.movie?.isSeen.toggle()
        
        if self.movie?.isSeen == true {
            sender.setTitle("Seen", for: .normal)
        } else if self.movie?.isSeen == false{
            sender.setTitle("Not Seen", for: .normal)
        }
        
    }
    var movie: Movie? {
        didSet {
            updateSelf()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    private func updateSelf() {
        guard let movie = movie else {return}
        
        movieTitleLabel.text = movie.name
        if movie.isSeen {
            isSeenTitle.setTitle("Seen", for: .normal)
        } else {
            isSeenTitle.setTitle("Not Seen", for: .normal)
        }
    }

}

