//
//  ViewController.swift
//  TagsTableExample
//
//  Created by Don Mag on 1/11/22.
//

import UIKit

class MyLabelOnlyViewController: UIViewController {

	@IBOutlet var infoLabel: UILabel!
	
	@IBOutlet var myLabelView: MyLabelView!
	@IBOutlet var mlvHeightConstraint: NSLayoutConstraint!
	
	override func viewDidLoad() {
		super.viewDidLoad()
	
		// call reloadData() *before* layout is complete
		myLabelView.reloadData()
		
		// we get the Height based on Interface Builder width
		mlvHeightConstraint.constant = myLabelView.myHeight
		
		// let the UI update
		DispatchQueue.main.async {
			self.updateInfo()
		}
	}

	func updateInfo() {
		infoLabel.text = "Actual Bounds Size: \(myLabelView.bounds.size)"
	}
	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		// call reloadData() *after* layout is complete
		myLabelView.reloadData()
		mlvHeightConstraint.constant = myLabelView.myHeight
		// let the UI update
		DispatchQueue.main.async {
			self.updateInfo()
		}
	}

}

