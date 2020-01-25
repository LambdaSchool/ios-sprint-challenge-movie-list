//
//  MovieDetailViewController.swift
//  Movie List
//
//  Created by Brandi on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    var movie: Movie?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateViews()
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        titleLabel.text = movie.title
        yearLabel.text = movie.year
        
    }


}
