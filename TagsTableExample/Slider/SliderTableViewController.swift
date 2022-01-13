//
//  SliderTableViewController.swift
//  TagsTableExample
//
//  Created by Don Mag on 1/13/22.
//

import UIKit

class SliderTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

		tableView.register(UINib(nibName: "SliderTableViewCell", bundle: nil), forCellReuseIdentifier: "sc")
		//tableView.rowHeight = 160
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let cell = Bundle.main.loadNibNamed("SliderTableViewCell", owner: self, options: nil)?.first as! SliderTableViewCell
		cell.reload()
		return cell

//        let cell = tableView.dequeueReusableCell(withIdentifier: "sc", for: indexPath) as! SliderTableViewCell
//        return cell
    }

}
