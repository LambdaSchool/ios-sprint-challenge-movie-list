//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Kenneth Jones on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func newMovieAdded(movie: Movie)
}

class AddMovieViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var movieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    @IBAction func addMovieTapped(_ sender: Any) {
        guard let movieTitle = movieTextField.text,
            !movieTitle.isEmpty else { return }
        
        let movie = Movie(name: movieTitle)
        
        delegate?.newMovieAdded(movie: movie)
        dismiss(animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
