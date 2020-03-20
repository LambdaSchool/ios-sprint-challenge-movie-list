//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Mark Poggi on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func addMovie(_ movie: MOVIE)
}


class AddMovieViewController: UIViewController {
    
    
    @IBOutlet weak var MovieTextField: UITextField!
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MovieTextField.delegate = self
    }
    
    
    
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func save(_ sender: UIBarButtonItem) {
        guard let movieTrue = MovieTextField.text else { return }
        
        let movie = MOVIE(movies: movieTrue, viewed: true)
        delegate?.addMovie(movie)
        
        navigationController?.popViewController(animated: true)
    }
}

/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */

extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text,
            !text.isEmpty {
            MovieTextField.becomeFirstResponder() } else {
            MovieTextField.resignFirstResponder()
        }
        return false
    }
}
