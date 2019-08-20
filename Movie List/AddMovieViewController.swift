//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Danielle Blackwell on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func MovieWasCreated( _ movie: Movie)
}

class AddMovieViewController: UIViewController {

   
    @IBOutlet weak var newMovieTitle: UITextField!
    
    
    var movieController: MovieController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
   
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
    guard let movieName = newMovieTitle.text, newMovieTitle.text != "" else { return }
        let newMovie = Movie(name: movieName, seen: true)
        movieController?.movies.append(newMovie)
        navigationController?.popViewController(animated: true)
    }
}
