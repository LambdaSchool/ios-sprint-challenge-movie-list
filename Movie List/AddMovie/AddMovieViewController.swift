//
//  AddMovieController.swift
//  Movies
//
//  Created by Simon Elhoej Steinmejer on 27/07/18.
//  Copyright © 2018 Simon Elhoej Steinmejer. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MovieHandler
{
    //MARK: - Properties
    
    var movieController: MovieController?
    
    @IBOutlet weak var addNewMovieButton: UIButton!
    @IBOutlet weak var movieTitleTextField: UITextField!
    
    //MARK: - Functions
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        addNewMovieButton.isEnabled = false
        addNewMovieButton.setTitleColor(.lightGray, for: .normal)
    }
    
    @IBAction func handleEditingChanged(_ sender: Any)
    {
        guard let movieTitle = movieTitleTextField.text else { return }
        addNewMovieButton.isEnabled = movieTitle.count > 0 ? true : false
        addNewMovieButton.setTitleColor(movieTitle.count > 0 ? .blue : .lightGray, for: .normal)
    }
    
    @IBAction func handleAddNewMovie(_ sender: Any)
    {
        guard let movieTitle = movieTitleTextField.text else { return }
        movieController?.addMovie(withName: movieTitle)
        movieTitleTextField.text = nil
        movieTitleTextField.endEditing(true)
        showAlert(with: movieTitle)
    }
    
    private func showAlert(with movieTitle: String)
    {
        let alert = UIAlertController(title: "Successfully added \(movieTitle)", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}








