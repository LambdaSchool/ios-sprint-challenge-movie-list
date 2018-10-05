//
//  MovieUIViewController.swift
//  Movie List
//
//  Created by Yvette Zhukovsky on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit





class MovieViewController: UIViewController,UITableViewDataSource, UITableViewDelegate
 {
    
    
    
    let userDefaults = UserDefaults.standard
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var addbutton: UIButton!
    
    
    
    @IBAction func addMovie(_ sender: Any) {
    }
    
    

    var movie: [Movies] = []
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movie.count
    }
    
    let reuseIdentifier = "cell"
    
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier)
        else { fatalError("Failed cell guarantee") }
    

        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movie = self.movie[indexPath.row]
    }
    
    

    
}
