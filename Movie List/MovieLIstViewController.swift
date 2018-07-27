//
//  MovieLIstViewController.swift
//  Movie List
//
//  Created by Carolyn Lea on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieLIstViewController: UIViewController, UITabBarDelegate, UITableViewDataSource, AddMovieCellDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didTapSeenButton(_ sender: AddMovieCell) {
        guard let tappedIndexPath = self.tableView.indexPath(for: sender) else {return}
        
        
        print(tappedIndexPath)
    }
        
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddMovieCell", for: indexPath) as! AddMovieCell
        
        cell.movieNameLabel.text = "This is cell \(indexPath.row)"
        cell.delegate = self
        
        
        return cell
    }

}
