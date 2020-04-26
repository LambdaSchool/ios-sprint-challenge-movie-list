//
//  MovieTableViewCellDelegate.swift
//  Movie List
//
//  Created by Hannah Bain on 4/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.




protocol MovieTableViewCellDelegate: class {
    func hasSeenButtonWasTapped(onCell cell: MovieTableViewCell)
}
