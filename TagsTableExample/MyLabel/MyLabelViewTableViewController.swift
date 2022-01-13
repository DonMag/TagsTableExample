//
//  MyLabelViewTableViewController.swift
//  TagsTableExample
//
//  Created by Don Mag on 1/13/22.
//

import UIKit

class MyLabelViewTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = Bundle.main.loadNibNamed("MyLabelViewTableViewCell", owner: self, options: nil)?.first as! MyLabelViewTableViewCell
		cell.reload()
		return cell
    }

}
