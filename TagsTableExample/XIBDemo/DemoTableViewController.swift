//
//  DemoTableViewController.swift
//  TagsTableExample
//
//  Created by Don Mag on 1/14/22.
//

import UIKit

class DemoTableViewController: UITableViewController {

	let myData: [String] = [
		"Single Line",
		"A longer string which will wrap in Portrait Orientation",
		"This string is long enough that the text will need to word-wrap (on an iPhone 8) whether in Portrait Orientation or Landscape Orientation",
		"Another Single Line",
	]

    override func viewDidLoad() {
        super.viewDidLoad()
		self.title = "Demo Table"
		view.backgroundColor = .systemBackground
		tableView.register(UINib(nibName: "DemoTableViewCell", bundle: nil), forCellReuseIdentifier: "c")
		tableView.tableFooterView = UIView()
		tableView.separatorStyle = .none
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return myData.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "c", for: indexPath) as! DemoTableViewCell
		cell.label.text = myData[indexPath.row]
        return cell
    }

}
