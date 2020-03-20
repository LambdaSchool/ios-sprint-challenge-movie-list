//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Mark Poggi on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: MOVIE)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var MovieTextField: UITextField!
    @IBOutlet weak var cancelTapped: UIBarButtonItem!
    @IBOutlet weak var saveTapped: UIBarButtonItem!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveTapped(_ sender: Any) {
        guard let movieTrue = MovieTextField.text,
            !movieTrue.isEmpty else { return }
        
        let movie = MOVIE(movies: movieTrue)
        delegate?.movieWasAdded(movie)
        
//        var movie = MOVIE(movies: [])
        
        
        
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

extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text,
            !text.isEmpty {
            MovieTextField.becomeFirstResponder() } else {
                MovieTextField.resignFirstResponder()
            }
        return false
    }
}
