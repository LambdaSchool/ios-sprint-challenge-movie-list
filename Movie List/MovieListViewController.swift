//
//  MovieListViewController.swift
//  Movie List
//
//  Created by beth on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    let movieList = [Movie]()



    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self

        print(MovieViewModel.shared.itemCount())
    }

    @IBAction func move(_ sender: UIButton) {
        tableView.setEditing(true, animated: true)
        sender.addTarget(self, action: #selector(stopEditingTable(_:)), for: .touchUpInside)

    }

    @objc
    func stopEditingTable(_ sender: Any) {
        tableView.setEditing(false, animated: true)
    }


}

extension MovieListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return MovieViewModel.shared.itemCount()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieTableViewCell

        let movieslist = MovieViewModel.shared.items[indexPath.row]
        cell.movieLabel.text = movieslist


        return cell
    }


    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {

        guard editingStyle == .delete else { return }

        MovieViewModel.shared.removeMoview(at: indexPath.row)
        tableView.reloadData()
    }



    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {


        let item = MovieViewModel.shared.items[sourceIndexPath.row]

        MovieViewModel.shared.moveItem(from: sourceIndexPath.row, to: destinationIndexPath.row, stringValue: item)


    }

}

}
