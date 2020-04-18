//
//  AddMovieListVC.swift
//  Movie List
//
//  Created by Brian Rouse on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieListVCDelegate: class {
    func addMovieToTheList(addedMovie: MovieListModel)
}

class AddMovieListVC: UIViewController {
    
    // MARK: -
    
    @IBOutlet weak var movieNameTextField: UITextField!
    
    // MARK: - iVars
    
    weak var addMoviewDelegate: AddMovieListVCDelegate?
    
    // MARK: -

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupTextField()
    }
    
    // MARK: - Helper Methods
    
    private func setupTextField() {
        movieNameTextField.delegate = self
        movieNameTextField.becomeFirstResponder()
    }
    
    // MARK: - IBActions
    
    @IBAction func addMoviewBtnDidTapped(_ sender: UIButton) {
        if !(self.movieNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? true) {
            self.addMoviewDelegate?.addMovieToTheList(addedMovie: MovieListModel(movieName: self.movieNameTextField.text ?? "", isSeen: false))
            
            self.navigationController?.popViewController(animated: true)
        }
    }
}

extension AddMovieListVC: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
}
