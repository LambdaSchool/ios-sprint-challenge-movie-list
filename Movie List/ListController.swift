//
//  ListController.swift
//  Movie List
//
//  Created by Austin Cole on 11/9/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class ListController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let reuseIdentifier = "cell"
   
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.moviesCount() - 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        cell.textLabel?.text = Model.shared.movie(at: indexPath.row)
        return cell
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.insertRows(at: [IndexPath(row: Model.shared.moviesCount() - 1, section: 0)], with: .fade)
        
        Model.shared.loadData()
    }
}


