//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Shawn James on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var newMovieField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var delegate: AddMovieDelegate?
    
    @IBAction func addMovieTapped(_ sender: Any) {
        guard let movieTitle = newMovieField.text else { return }
        
        let newMovie = Movie(name: movieTitle)
        
        delegate?.movieWasAdded(newMovie)
        
        dismiss(animated: false, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
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
