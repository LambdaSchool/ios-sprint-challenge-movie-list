//
//  AddNewMovieViewController.swift
//  Movie List
//
//  Created by Jordan Davis on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddNewMovieViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }

    //MARK: - Actions
    @IBAction func addMovieButtonPressed(_ sender: Any) {
        guard let movie = movieTitleTextField.text, !title!.isEmpty else { return }
        movieListController.createMovie(with: movie)
        navigationController?.popToViewController(movieListVC, animated: true)
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "AddMovie" {
//            guard let addNewMovieVC = segue.destination as? AddNewMovieViewController else { return }
//            addNewMovieVC.movieListController = movieListController
//        }
//    }
    
    
    //MARK: Functions
    func updateViews() {
        guard isViewLoaded else { return }
    }
    
    //MARK: -Properties
    
    var movieListController = MovieListController()
    
    var movieListVC = MovieListViewController()
    
    @IBOutlet var movieTitleTextField: UITextField!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
}
