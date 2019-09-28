//
//  addMovieViewController.swift
//  Movie List
//
//  Created by denis cedeno on 9/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
protocol addMovieDelegate{
    func movieWasAdded(_ movie: Movie)
}
class addMovieViewController: UIViewController {

    @IBOutlet weak var addMovieTextField: UITextField!
    @IBOutlet weak var addMovieButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

 

}
