//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Andrew Dhan on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class{
    func toggleHasSeen(for cell: MovieTableViewCell)
}
class MovieTableViewCell: UITableViewCell {

    
    @IBAction func hasSeenToggleAction(_ sender: Any) {
        delegate?.toggleHasSeen(for: self)
//        guard var movie = movie else { return}
//        if movie.hasSeen{
//            hasSeenButtonLabel.setTitle("Not Seen", for: .normal)
//            movie.hasSeen = false
//        } else {
//            hasSeenButtonLabel.setTitle("Seen", for: .normal)
//            movie.hasSeen = true
//        }
    }
    
    private func updateViews(){
        guard let movie = movie else {return}
        titleLabel.text = movie.title
        let hasSeenStr = movie.hasSeen ? "Seen" : "Not See"
        print(hasSeenStr)
        hasSeenButtonLabel.setTitle(hasSeenStr, for: .normal)
    }
    
    //MARK: - Properties
    
    var movie: Movie? {
        didSet{
            print("Did Set")
            updateViews()
        }
    }
    
    weak var delegate:MovieTableViewCellDelegate?
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var hasSeenButtonLabel: UIButton!
}
