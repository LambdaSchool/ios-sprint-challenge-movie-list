//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Jorge Alvarez on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    
    @IBOutlet weak var movieTextField: UITextField!
    @IBOutlet weak var addMovieButton: UIButton!
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        
        guard let movieName = movieTextField.text, !movieName.isEmpty else {return}
        
        let movie = Movie(name: movieName, seen: false)
        
        delegate?.movieWasAdded(movie: movie)
        
        dismiss(animated: true, completion: nil)
        // go back to master VC ??
        navigationController?.popViewController(animated: true)
        
        print("\(#function) was pressed")
    }
    
    var delegate: AddMovieDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTextField.delegate = self

        // Do any additional setup after loading the view.
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
        
        // This block just does what addMovieButton does, but when you push return
        guard let movieName = movieTextField.text, !movieName.isEmpty else { return false }
        let movie = Movie(name: movieName, seen: false)
        delegate?.movieWasAdded(movie: movie)
        dismiss(animated: true, completion: nil)
        navigationController?.popViewController(animated: true)
        print("\(#function) was pressed")
        
        return true
    }
}


