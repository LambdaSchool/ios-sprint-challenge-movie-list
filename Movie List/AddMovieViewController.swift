//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Nihal Erdal on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit


protocol NewMovieDelegate {
    
    func newMovieWasCreated(movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieNameTextField: UITextField!
    
    
    @IBOutlet weak var addMovie: UIButton!
    
    var delegate : NewMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func addMovie(_ sender: Any) {
        
        guard let movieName = movieNameTextField.text,
            !movieName.isEmpty else {return}
        
        let movie = Movie(name: movieName)
        
        delegate?.newMovieWasCreated(movie: movie)
        
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
