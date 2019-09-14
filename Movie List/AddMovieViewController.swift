//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by macbook on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit


protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController, UITextFieldDelegate {
    
    var delegate: AddMovieDelegate?
    
    //var newMovie: Movie?

    
    @IBOutlet weak var movieTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    // TODO : - Configure AddMovieTapped
    
    @IBAction func addMovieTapped(_ sender: Any) {
        
        guard let newMovieTitle = movieTextField.text else { return }
        var newMovie = Movie(name: newMovieTitle, hasBeenSeen: false)
        
        delegate?.movieWasAdded(newMovie)
        
//        if let newMovieTitle = movieTextField.text {
//            newMovie = Movie(name: newMovieTitle, hasBeenSeen: false)
//            delegate?.movieWasAdded(newMovie!)
//
//        }
        

        
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

//extension AddMovieViewController: AddMovieDelegate {
//    func movieWasAdded(_ movie: Movie) {
//        
//    }
//    
//    
//}
