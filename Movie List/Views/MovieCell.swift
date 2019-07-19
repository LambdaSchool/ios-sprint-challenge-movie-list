//
//  MovieCell.swift
//  Movie List
//
//  Created by Jeffrey Santana on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieCellDelegate {
	func toogleIsSeen(movie: Movie, listIndex: Int)
}

class MovieCell: UITableViewCell {

	@IBOutlet weak var titleLbl: UILabel!
	@IBOutlet weak var seenBtn: UIButton!
	
	var movie: Movie?
	var indexPath: IndexPath?
	var delegate: MovieCellDelegate?
	
	@IBAction func seenBtnAction(_ sender: UIButton) {
		guard let movie = movie, let index = indexPath?.row else {return}
		delegate?.toogleIsSeen(movie: movie, listIndex: index)
	}
	
	func configCellWith(movie: Movie, indexPath: IndexPath) {
		self.movie = movie
		self.indexPath = indexPath
		
		titleLbl.text = movie.title
		seenBtn.titleLabel?.text = movie.isSeen ? "Seen" : "UnSeen"
	}
}
