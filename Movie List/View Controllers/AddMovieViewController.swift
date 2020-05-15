//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Richard Gibbs on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(movie: Movie)
}

class AddMovieViewController: UIViewController {

    
    
    @IBOutlet weak var movieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        movieTextField?.delegate = self
        // Do any additional setup after loading the view.
    }
    

    @IBAction func addMovieButton(_ sender: Any) {
        
        guard let movie = movieTextField?.text else { return }
        
        let movieObject = Movie(movieName: movie, hasBeenSeen: true)
        delegate?.movieWasCreated(movie: movieObject)
        dismiss(animated: true, completion: nil)
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
        movieTextField.resignFirstResponder()
        
        return true 
    }
}
