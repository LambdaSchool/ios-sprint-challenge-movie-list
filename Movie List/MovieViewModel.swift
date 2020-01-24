//
//  MovieViewModel.swift
//  Movie List
//
//  Created by beth on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

class MovieViewModel: UITableViewCell {

static let shared = MovieViewModel()
private init() {}
var list = [Movie]()
var items: [String] = []
var seen = false

func addMovie(_ title: String ){
    let movie = Movie(title: title)
    items.append(movie.title)

  }
func itemCount() -> Int {
        return items.count
    }

    func removeMoview(at index: Int) {

        items.remove(at: index)
    }

    func moveItem(from index: Int, to destinationIndex: Int, stringValue: String) {

        items.remove(at: index)
        items.insert(stringValue, at: destinationIndex)
    }

    func changeSeen(value: Bool){
       seen = value
    }

}

