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

   
    @IBOutlet weak var addNewMovie: UITextField!
    
    var movieController: MovieController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
    
    
    
    @IBAction func addButtonTapped(_ sender: UIBarButtonItem) {
    
        guard  let movieName = addNewMovie.text, addNewMovie.text != "" else { return }
        let newMovie = Movie(name: movieName, seen: false)
        movieController?.movies.append(newMovie)
        navigationController?.popViewController(animated: true)
        
    }

}
