//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Rebecca Overare on 5/15/20.
//  Copyright © 2020 Rebecca Overare. All rights reserved.
//

import UIKit

protocol MovieDelegate {
    func movieWasAdded(movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    var delegate: MovieDelegate?
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func addMovie(_ sender: Any) {
        guard let name = textField.text else { return }
        
        let movie = Movie(name: name, seen: false)
        delegate?.movieWasAdded(movie: movie)
        dismiss(animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
