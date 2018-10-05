//
//  MoviesViewController.swift
//  Movie List
//
//  Created by Lotanna Igwe-Odunze on 10/5/18.
//  Copyright © 2018 Lotanna. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var movieTable: UITableView!
    
    //Determines the number of rows to display
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movieCollection.count //Only displays as many rows as movies contained in the collection
    }
    
    //Creates each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let item = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "moviecell")
        //Connects the cells in the table view to the prototype cell via the reuse identifier
        return item
        
    }
    
    //Lets you delete movies
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete { //If there's a swipe to delete...
            
            movieCollection.remove(at: indexPath.row) //...remove the item at the index that matches that row
            movieTable.reloadData() //refresh after deleting
        }
    }
    
    
    
    
    
    
//Default code below
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

