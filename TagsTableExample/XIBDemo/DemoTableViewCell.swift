//
//  DemoTableViewCell.swift
//  TagsTableExample
//
//  Created by Don Mag on 1/14/22.
//

import UIKit

class DemoTableViewCell: UITableViewCell {
	@IBOutlet var label: UILabel!
	@IBOutlet var myView: UIView!
	
	override func awakeFromNib() {
		super.awakeFromNib()
		myView.layer.cornerRadius = 8
		myView.layer.shadowOffset = CGSize(width: 0, height: 3)
		myView.layer.shadowRadius = 3
		myView.layer.shadowOpacity = 0.5
	}
}
