//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Joel Groomer on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnSeen: UIButton!
    
    var delegate: MovieDelegate?
    var movie: Movie? {
        didSet {
            updateView()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    @IBAction func seenTapped(_ sender: Any) {
        guard let movie = movie else { return }
        self.movie = delegate?.toggleSeen(movie)
    }
    
    func updateView() {
        guard let movie = movie else { return }
        lblTitle.text = movie.title
        btnSeen.setTitle(movie.seen ? "Seen" : "Not Seen", for: .normal)
    }
}
