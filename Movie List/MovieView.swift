//
//  MovieView.swift
//  Movie List
//
//  Created by William Bundy on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class MovieTabBarVC: UITabBarController
{
	var movieController = MovieController()

	override func viewDidLoad()
	{
		for defaultChild in childViewControllers {
			if var child = defaultChild as? MovieConsumer {
				child.movieController = movieController
			}
		}
	}
}

class MovieCell: UITableViewCell
{

}

class MovieListVC: UIViewController, MovieConsumer
{
	var movieController: MovieController!

}

class MovieAddVC: UIViewController, MovieConsumer
{
	var movieController: MovieController!

	@IBOutlet weak var nameField: UITextField!

	@IBAction func addMovie(_ sender: Any) {
	}
}
