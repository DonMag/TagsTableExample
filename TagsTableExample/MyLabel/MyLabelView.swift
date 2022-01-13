//
//  MyLabelView.swift
//  TagsTableExample
//
//  Created by Don Mag on 1/13/22.
//

import UIKit

class MyLabelView: UIView {

	@IBOutlet var contentView: UIView!
	@IBOutlet var theLabel: UILabel!

	public var myHeight: CGFloat = 0
	
	public func reloadData() {
		if bounds.width < 300 {
			myHeight = 60
		} else if bounds.width < 400 {
			myHeight = 120
		} else {
			myHeight = 320
		}
		theLabel.text = "bounds width: \(bounds.width)\nset myHeight to \(myHeight)"
	}

	//  init used if the view is created programmatically
	override init(frame: CGRect) {
		super.init(frame: frame)
		self.customInit()
	}
	
	//  init used if the view is created through IB
	required public init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		self.customInit()
	}
	
	
	open func customInit() {
		Bundle.main.loadNibNamed("MyLabelView", owner: self, options: nil)
		addSubview(contentView)
		contentView.frame = self.bounds
		contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
	}
	
}
