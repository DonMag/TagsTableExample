//
//  SliderTableViewCell.swift
//  TagsTableExample
//
//  Created by Don Mag on 1/13/22.
//

import UIKit

class SliderTableViewCell: UITableViewCell {

	@IBOutlet var rangeSlider: RangeSlider!
	
	@IBOutlet var sliderHeightConstraint: NSLayoutConstraint!

	override func awakeFromNib() {
		super.awakeFromNib()
	}
	override func layoutSubviews() {
		super.layoutSubviews()
	}
	public func reload() {
		rangeSlider.reloadData()
		let h = rangeSlider.myHeight
		sliderHeightConstraint.constant = h
	}
	
}
