//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by David Wright on 11/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var movieTitleTextField: UITextField!
    
    // MARK: - Properties
    var delegate: AddMovieDelegate?
    
    // MARK: - IBActions
    @IBAction func addMovieButtonTapped(_ sender: UIButton) {
        guard let movieTitle = movieTitleTextField.text,
            !movieTitle.isEmpty else { return }
        
        delegate?.movieWasAdded(Movie(title: movieTitle))
        navigationController?.popViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
