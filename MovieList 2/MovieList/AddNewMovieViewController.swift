//
//  AddNewMovieViewController.swift
//  MovieList
//
//  Created by Jordan Davis on 5/3/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

class AddNewMovieViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    //MARK: - Actions
    @IBAction func addMovieButtonPressed(_ sender: Any) {
        //print("Movie Added")
        guard let movie = movieTitleTextField.text, movie != ""  else { return }
        
        movieListController.createMovie(with: movie)
        
        navigationController?.popViewController(animated: true)
    }
    //MARK: Functions
    func updateViews() {
        guard isViewLoaded else { return }
    }
    
    
    
    //MARK: -Properties
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    var viewController = UIViewController()
    let movieListController = MovieListController()
    
    @IBOutlet var movieTitleTextField: UITextField!
    
}
