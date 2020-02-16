//
//  AddMovieViewController.swift
//  MovieFinal
//
//  Created by Jarren Campos on 2/15/20.
//  Copyright © 2020 Jarren Campos. All rights reserved.
//
import UIKit

protocol AddMovieDelegate {
    func createMovie(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet var addMovieTextField: UITextField!
    @IBOutlet var addMovieButton: UIButton!
    
    //MARK: - Private Propoerty
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - IBAction
    @IBAction func addButton(_ sender: Any) {
        guard let title = addMovieTextField.text,
            !title.isEmpty else {return}
        
        let movie = Movie(name: title)
        delegate?.createMovie(movie)
    }
}
