//
//  MovieDetailViewController.swift
//  Movie List
//
//  Created by brian vilchez on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        reasonsToWatchTextview.text = ""
       updateViews()
    }
    //MARK: - Properties
    @IBOutlet weak var ReasonsToWatchLabel: UILabel!
    @IBOutlet weak var reasonsToWatchTextview: UITextView!
    var movie: Movie?
    
    func updateViews() {
        guard let movie = movie else {return}
        title = movie.movieName
        ReasonsToWatchLabel.text = "Reasons To Watch:"
        
        for reasonToWatch in movie.reasonsToWatch {
        reasonsToWatchTextview.text += "∙ \(reasonToWatch) \n"
        }
    }
}
