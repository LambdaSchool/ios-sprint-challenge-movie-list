//
//  ViewController.swift
//  Movie List
//
//  Created by Ian French on 4/19/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit


protocol AddMovieDelegate {
    func newMovieAdded(movie: Movie)
}



class AddMovieViewController: UIViewController {

   
    @IBOutlet weak var movieName: UITextField!
    
    var delegate: AddMovieDelegate?
    
    

    @IBAction func addMovieButton(_ sender: UIButton) {
        
        guard let unwrappedMovie = movieName?.text else {
           dismiss(animated: true, completion: nil)
                   return
           }
        var movie = Movie(movieName: movieName, hasSeen: Bool)
        
        
        
        delegate?.newMovieAdded(movie: movie)
        dismiss(animated: true, completion: nil)
        

        
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

extension AddMovieViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
}
