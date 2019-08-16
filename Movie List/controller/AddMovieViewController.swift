//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by brian vilchez on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    //MARK: - Properties
    @IBOutlet weak var movieNameTextfield: UITextField!
    @IBOutlet weak var firstReasonTextfield: UITextField!
    @IBOutlet weak var secondReasonTextfield: UITextField!
    @IBOutlet weak var thirdReasonTextfield: UITextField!
    @IBOutlet weak var yesOrNoButton: UISegmentedControl!
    var delegate: createMovieDelegate?
   
    //MARK: - actions
    
    @IBAction func cancelTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        
        guard let movie = movieNameTextfield.text,!movie.isEmpty else{ return }
        var movieInfo: Movie
        if yesOrNoButton.isEnabledForSegment(at: 0) {
            movieInfo = Movie(movieName: movie, hasBeenSeen: true)
            
                if let FirstReason = firstReasonTextfield.text,!FirstReason.isEmpty {
                    movieInfo.reasonsToWatch.append(FirstReason)
                }
                if let secondReason = secondReasonTextfield.text,!secondReason.isEmpty {
                    movieInfo.reasonsToWatch.append(secondReason)
                }
                if let thirdReason = thirdReasonTextfield.text,!thirdReason.isEmpty {
                    movieInfo.reasonsToWatch.append(thirdReason)
                
            }
            delegate?.movieWasCreated(movieInfo)
            print(movieInfo)
            
        } else if yesOrNoButton.isEnabledForSegment(at: 1) {
            movieInfo = Movie(movieName: movie, hasBeenSeen: false)
            delegate?.movieWasCreated(movieInfo)
            print(movieInfo)
        }
    }
    

    
}
extension AddMovieViewController {
    override func viewDidLoad() {
            super.viewDidLoad()
        yesOrNoButton.setTitle("Seen", forSegmentAt: 0)
        yesOrNoButton.setTitle("NotSeen", forSegmentAt: 1)
    }
}
