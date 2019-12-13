//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Michael on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(movie: Movie)
}


class AddMovieViewController: UIViewController {

    @IBOutlet weak var addMovieLabel: UILabel!
    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addMovieTextField.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addAMovieTapped(_ sender: Any) {
        if let movieName = addMovieTextField.text,
                !movieName.isEmpty {
                let movie = Movie(movie: movieName)
                
                delegate?.movieWasAdded(movie: movie)
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

    
}

extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
