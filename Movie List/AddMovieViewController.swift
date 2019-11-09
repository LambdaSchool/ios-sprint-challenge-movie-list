//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_218 on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieWasAddedDelegate {
    func movieWasAdded(movie: Movies)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieTextField: UITextField!
    
    var delegate: MovieWasAddedDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        movieTextField.delegate = self
    
    }
          
    @IBAction func addTapped(_ sender: Any) {
        var film = Movies(title: title!)
        if let title = movieTextField.text,
            !title.isEmpty{
            film.title.append(title)
        }
        }
        
    }
    

extension AddMovieViewController: UITextFieldDelegate {
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            
    
            textField.resignFirstResponder()
            
            return true
        }
     
    }


