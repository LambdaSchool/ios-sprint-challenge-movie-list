//
//  EditMovieViewController.swift
//  Movie List
//
//  Created by Kenneth Jones on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol EditMovieDelegate {
    func movieEdited(movie: Movie)
}

class EditMovieViewController: UIViewController, UITextFieldDelegate {
    
    var movie: Movie?
    
    @IBOutlet weak var movieTextField: UITextField!
    
    var delegate: EditMovieDelegate?
    
    @IBAction func saveTapped(_ sender: Any) {
        guard let movieTitle = movieTextField.text,
            !movieTitle.isEmpty else { return }
        
        let movie = Movie(name: movieTitle)
        
        delegate?.movieEdited(movie: movie)
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        if let movie = self.movie {
            movieTextField.text = movie.name
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
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
