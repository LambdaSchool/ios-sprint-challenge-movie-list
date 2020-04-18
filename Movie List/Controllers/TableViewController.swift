//
//  TableViewController.swift
//  Movie List
//
//  Created by Brian Rouse on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    // MARK: - iVars
    
    var movieList: [MovieListModel] = []
    
    // MARK: - CellLifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()

        registerCell()
    }
    
    // MARK: - Helper Methods
    
    private func registerCell() {
        self.tableView.register(UINib(nibName: "MovieTableViewCell", bundle: nil), forCellReuseIdentifier: "MovieTableViewCell")
    }
    
    // MARK: - IBActions
    
    @objc func seenToggleBtnDidTapped(_ sender: UIButton) {
        if self.movieList.indices.contains(sender.tag) {
            self.movieList[sender.tag].isSeen = !self.movieList[sender.tag].isSeen
            self.tableView.reloadRows(at: [IndexPath(row: sender.tag, section: 0)], with: .automatic)
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.movieList.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let listCell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell", for: indexPath) as? MovieTableViewCell else { fatalError("Unexpected Table View Cell") }

        let aMovieList = self.movieList[indexPath.row]
        listCell.movieNameLbl.text = aMovieList.movieName
        listCell.seenToggleBtn.setTitle(aMovieList.isSeen ? "Seen" : "Not Seen", for: .normal)
        
        listCell.seenToggleBtn.tag = indexPath.row
        listCell.seenToggleBtn.addTarget(self, action: #selector(seenToggleBtnDidTapped(_:)), for: .touchUpInside)

        return listCell
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            self.movieList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "AddListVCSegue" {
            if let addMovieVC = segue.destination as? AddMovieListVC {
                addMovieVC.addMoviewDelegate = self
            }
        }
    }

}

extension TableViewController: AddMovieListVCDelegate {
    func addMovieToTheList(addedMovie: MovieListModel) {
        self.movieList.append(addedMovie)
        self.tableView.reloadData()
    }
}
