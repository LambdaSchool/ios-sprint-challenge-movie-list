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

class AddMovieViewController: UIViewController, UITextFieldDelegate {

   
    
    @IBOutlet weak var movieTextField: UITextField!
    var movie: Movie?
    var delegate: AddMovieDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        movieTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button(_ sender: Any) {
    
    
//    @IBAction func addMovieButton(_ sender: UIButton) {
        guard let movie = movieTextField.text else { return }
        
        let movieObject = Movie(movieName: movie, hasBeenSeen: true)
        
        delegate?.movieWasCreated(movie: movieObject)
        self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
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



extension AddMovieViewController: AddMovieDelegate {
    func movieWasCreated(movie: Movie) {
        movieTextField.text = movie.movieName
        
    }
    
    
    }

