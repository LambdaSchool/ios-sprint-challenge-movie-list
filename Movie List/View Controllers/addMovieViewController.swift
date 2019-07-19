//
//  addMovieViewController.swift
//  Movie List
//
//  Created by Alex Rhodes on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol addMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class addMovieViewController: UIViewController {

    @IBOutlet weak var addNewMovieLabel: UILabel!
    @IBOutlet weak var addNewMovieTextField: UITextField!
    
    var delegate: addMovieDelegate?
    
    @IBAction func addNewMovieButton(_ sender: UIButton) {
        guard let addNewMovieName = addNewMovieTextField.text, !addNewMovieName.isEmpty else {return}
            
        let movie = Movie(name: addNewMovieName, hasSeen: false)
        
        delegate?.movieWasAdded(movie)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
