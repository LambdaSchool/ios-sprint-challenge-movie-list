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
    
    @IBAction func addMovieTapped(_ sender: Any) {
        if let name = addMovieTextField.text, !name.isEmpty {
            var movies = Movie(movieName: [], hasSeen: false)
            movies.movieName.append(name)
            
            delegate?.movieWasAdded(movie: movies)
        
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
