//
//  MyLabelViewTableViewCell.swift
//  TagsTableExample
//
//  Created by Don Mag on 1/13/22.
//

import UIKit

class MyLabelViewTableViewCell: UITableViewCell {

	@IBOutlet var myLabelView: MyLabelView!
	@IBOutlet var mlvHeightConstraint: NSLayoutConstraint!
	
	public func reload() {
		myLabelView.reloadData()
		let h = myLabelView.myHeight
		mlvHeightConstraint.constant = h
	}

	override func systemLayoutSizeFitting(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize {
		// force layout of all subviews, which
		//	updates out custom views intrinsic heighta, and thus height of a cell
		self.setNeedsLayout()
		self.layoutIfNeeded()
		
		// now intrinsic height is correct, so we can call super method
		return super.systemLayoutSizeFitting(targetSize, withHorizontalFittingPriority: horizontalFittingPriority, verticalFittingPriority: verticalFittingPriority)
	}
	

}
