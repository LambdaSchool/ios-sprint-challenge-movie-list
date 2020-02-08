//
//  DetailMovieViewController.swift
//  Movie List
//
//  Created by Jarren Campos on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class DetailMovieViewController: UIViewController {

    @IBOutlet var movieName: UILabel!
    

    var movieTitle: MyMovie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        if let movieTitle = movieTitle{
            title = movieTitle.title
            movieName.text = movieTitle.title
            
    }
    }

    }

