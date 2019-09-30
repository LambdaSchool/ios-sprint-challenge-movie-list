//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Christy Hicks on 9/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}
class AddMovieViewController: UIViewController {

    @IBOutlet weak var addMovieTextField: UITextField!
    @IBOutlet weak var addMovieButton: UIButton!
    
    var movieDelegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addMovieButtonTapped(_ sender: UIButton) {
        guard let newMovie = addMovieTextField.text, !newMovie.isEmpty else { return }
        let aMovie = Movie(title: newMovie)
        movieDelegate?.movieWasAdded(aMovie)
        dismiss(animated: true, completion: nil)    }
  

}
