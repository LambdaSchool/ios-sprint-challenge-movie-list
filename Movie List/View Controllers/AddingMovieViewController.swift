//
//  AddingMovieViewController.swift
//  Movie List
//
//  Created by Sam Gutierrez on 5/30/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

// Delegation Design Pattern

// Delegator (which is found on this page)
// Step 1: Create a delegate protocol
// Step 2: Create delegate property on delegator file of type delegate
// Step 3: Call methods on delegate when necessary

// Delegate (which is found on your MoviesTableViewController)


protocol  AddMovieDelegate {
    func newMovieAdded(movie: Movie)
}

class AddingMovieViewController: UIViewController {
    
    @IBOutlet weak var EnterMoviesTitleTextLabel: UITextField!
    
    var delegate: AddMovieDelegate?
    
    @IBAction func AddMovieButtonTapped(_ sender: UIButton) {
        //Grab the user input
        guard let name = EnterMoviesTitleTextLabel.text, !name.isEmpty else {return}
        
        let movie = Movie(name: name)
        
        delegate?.newMovieAdded(movie: movie)
        navigationController?.popToRootViewController(animated: true)
//        dismiss(animated: true, completion: nil)
// How come this method did not work ^^^
    }
}

extension AddingMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
}

