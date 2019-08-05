//
//  MovieDetailViewController.swift
//  Movie List
//
//  Created by Eoin Lavery on 05/08/2019.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieDetailDelegate {
    func thoughtsDidChange(_ thoughts: String, _ atIndex: Int)
}

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var haveSeenLabel: UILabel!
    @IBOutlet weak var thoughtsTextField: UITextView!
    
    var movie: Movie?
    var movieIndex: Int?
    var delegate: MovieDetailDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }

    override func viewWillDisappear(_ animated: Bool) {
        if let thoughts = thoughtsTextField.text, let index = movieIndex {
            delegate?.thoughtsDidChange(thoughts, index)
        }
    }
    
    private func updateViews() {
        guard let selectedMovie = movie else { return }
        
        self.title = selectedMovie.name
        
        if selectedMovie.hasBeenSeen == true {
            haveSeenLabel.text = "You have seen this."
        } else {
            haveSeenLabel.text = "You haven't seen this... yet."
        }
        
        thoughtsTextField.text = selectedMovie.thoughts
    }

}
