//
//  ViewController.swift
//  TagsTableExample
//
//  Created by Don Mag on 1/11/22.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var myLabelView: MyLabelView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
	
		myLabelView.reloadData()
	}


}

