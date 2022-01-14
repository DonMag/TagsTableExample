//
//  TesterViewController.swift
//  Cameras + Formats
//
//  Created by Zak Ray on 5/4/20.
//  Copyright © 2020 Zak Ray. All rights reserved.
//

import UIKit

class TesterViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	
	// "callback" closure to tell the menu view controller to update the data
	public var tagStateChanged: ((String, String, Bool) -> ())?

	// this example is not using these...
	/*
	var activeSensorFilters: [FilterSensorSize] = []
	var activeLensMountFilters: [FilterLensMountCamera] = []
	var activeResolutionFilters: [FilterResolution] = []
	var activeRawFilters: [FilterRaw] = []
	var activeBitDepthFilters: [FilterBitDepth] = []
	var activeChromaFilters: [FilterChroma] = []
	var activeNDFilters: [FilterND] = []
	var activeCompressionFilters: [FilterCompression] = []
	var activeNetflixFilters: [FilterNetflix] = []
	*/
	
	// let's use dictionaries to manage the
	//	Available and Active (selected) filters
	// these will be set by the Menu controller
	var availableFilters: [String : [String]] = [:]
	var activeFilters: [String : [String]] = [:]

	var rowOneAvailableA: [String] = []
	var rowOneAvailableB: [String] = []
	var bTest: Bool = false

	private var tableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()

		view.backgroundColor = .gray
		
		tableView = UITableView()
		tableView.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(tableView)
		
		let g = view.safeAreaLayoutGuide
		NSLayoutConstraint.activate([
			tableView.topAnchor.constraint(equalTo: g.topAnchor, constant: 20.0),
			tableView.leadingAnchor.constraint(equalTo: g.leadingAnchor, constant: 20.0),
			tableView.trailingAnchor.constraint(equalTo: g.trailingAnchor, constant: -20.0),
			tableView.bottomAnchor.constraint(equalTo: g.bottomAnchor, constant: -20.0),
		])
		
		tableView.register(FilterTagsTableViewCell.self, forCellReuseIdentifier: FilterTagsTableViewCell.identifier)
		tableView.dataSource = self
		tableView.delegate = self
		
		if let av = availableFilters[CameraFilter.LensMount.rawValue] {
			rowOneAvailableA = av
			rowOneAvailableB = Array(av[1...2])
		}
	}
	
	func calculateFilterResults() {
		
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		CameraFilter.allCases.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let cell = tableView.dequeueReusableCell(withIdentifier: FilterTagsTableViewCell.identifier, for: indexPath) as! FilterTagsTableViewCell
		cell.selectionStyle = UITableViewCell.SelectionStyle.none
		
		let availableFilterCategories = CameraFilter.allCases
		
		let fCat = availableFilterCategories[indexPath.row].rawValue
		cell.filterCategory = fCat
		cell.backgroundColor = Colors.cameraPrimaryInset
		cell.insetColor = Colors.cameraPrimaryInsetInset
		cell.textColor = Colors.cameraPrimary

		// these are Optionals, so we need to unwrap
		guard let available = availableFilters[fCat],
			  let active = activeFilters[fCat]
		else {
			fatalError("Data setup was incorrect!")
		}
		
		if indexPath.row == 1 {
			let av = bTest ? rowOneAvailableA : rowOneAvailableB
			cell.fillData(available: av, active: active)
		} else {

			cell.fillData(available: available, active: active)
			
		}
		
		cell.tagStateChanged = { [weak self] c, s, b in
			guard let self = self,
				  let thisCell = c as? FilterTagsTableViewCell
			else { return }
			if b {
				self.activeFilters[thisCell.filterCategory]?.append(s)
			} else {
				self.activeFilters[thisCell.filterCategory]?.removeAll(where: {$0 == s})
			}
			self.tagStateChanged?(thisCell.filterCategory, s, b)
			if thisCell.filterCategory == CameraFilter.SensorSize.rawValue &&
				s == FilterSensorSize.Super35.rawValue {
				self.bTest = b
				self.tableView.reloadRows(at: [IndexPath(row: 1, section: 0)], with: .automatic)
			}
		}
		
		return cell
	}
	
}

