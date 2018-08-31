//
//  AddNewMovieViewController.swift
//  Movie List
//
//  Created by Jason Modisett on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddNewMoviesViewController: UIViewController, MovieControllerProtocol {

    // Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(viewWasTapped(sender:)))
        view.addGestureRecognizer(tapGestureRecognizer)
    }
    
    // IBActions & Logic
    @IBAction func submitMovie(_ sender: Any) {
        guard let title = titleTextField.text else { return }
        
        movieController?.createNewMovie(title: title)
        
        let hapticFeedback = UIImpactFeedbackGenerator(style: .medium)
        hapticFeedback.impactOccurred()
        
        titleTextField.text = ""
        
        view.endEditing(true)
    }
    
    @objc func viewWasTapped(sender: UITapGestureRecognizer? = nil) {
        view.endEditing(true)
    }
    
    // IBOutlets & Properties
    @IBOutlet weak var titleTextField: UITextField!
    
    var movieController: MovieController?
    
}
