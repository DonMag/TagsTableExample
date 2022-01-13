//
//  MyLabelViewTableViewCell.swift
//  TagsTableExample
//
//  Created by Don Mag on 1/13/22.
//

import UIKit

class MyLabelViewTableViewCell: UITableViewCell {

	@IBOutlet var infoLabel: UILabel!
	@IBOutlet var myLabelView: MyLabelView!
	@IBOutlet var mlvHeightConstraint: NSLayoutConstraint!
	
	public func reload() {
		myLabelView.reloadData()
		let h = myLabelView.myHeight
		mlvHeightConstraint.constant = h
	}

	override func layoutSubviews() {
		super.layoutSubviews()
		reload()
		updateInfo()
	}
	
	func updateInfo() {
		infoLabel.text = "ContentView bounds.size: \(contentView.bounds.size)\nMyLabelView bounds.size: \(myLabelView.bounds.size)"
	}

}
