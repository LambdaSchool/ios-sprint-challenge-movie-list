//
//  AddNewMovieViewController.swift
//  Movie List
//
//  Created by Harmony Radley on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func MovieWasCreated(_ mov: Movie)
}

class AddNewMovieViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

