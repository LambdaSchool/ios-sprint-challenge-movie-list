//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Dennis on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit


protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}


class AddMovieViewController: UIViewController {

    @IBOutlet weak var enterMovie: UITextField!
    
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func addMovieTapped(_ sender: UIButton) {
        guard let movieName = enterMovie.text,
           !movieName.isEmpty else { return }
        
        let theMovie = Movie(title: movieName, seen: false)
        
        delegate?.movieWasAdded(theMovie)
//        dismiss(animated: true, completion: nil)
    }
    


}
