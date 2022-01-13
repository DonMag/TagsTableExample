//
//  TesterViewController.swift
//  Cameras + Formats
//
//  Created by Zak Ray on 5/4/20.
//  Copyright © 2020 Zak Ray. All rights reserved.
//

import UIKit

class TesterViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	
	var activeSensorFilters: [FilterSensorSize] = []
	var activeLensMountFilters: [FilterLensMountCamera] = []
	var activeResolutionFilters: [FilterResolution] = []
	var activeRawFilters: [FilterRaw] = []
	var activeBitDepthFilters: [FilterBitDepth] = []
	var activeChromaFilters: [FilterChroma] = []
	var activeNDFilters: [FilterND] = []
	var activeCompressionFilters: [FilterCompression] = []
	var activeNetflixFilters: [FilterNetflix] = []
	
	// let's use dictionaries to manage the
	//	Available and Active (selected) filters
	var availableFilters: [String : [String]] = [:]
	var activeFilters: [String : [String]] = [:]
	
	private var tableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// map all the Filters and sub-items into the availableFilters dictionary
		CameraFilter.allCases.forEach { v in
			
			switch v {
			case .SensorSize:
				availableFilters[v.rawValue] = FilterSensorSize.allCases.map({$0.rawValue})
				
			case .LensMount:
				availableFilters[v.rawValue] = FilterLensMountCamera.allCases.map({$0.rawValue})
				
			case .Resolution:
				availableFilters[v.rawValue] = FilterResolution.allCases.map({$0.rawValue})
				
			case .SlowMotion:
				availableFilters[v.rawValue] = []
				
			case .Weight:
				availableFilters[v.rawValue] = []
				
			case .Raw:
				availableFilters[v.rawValue] = FilterRaw.allCases.map({$0.rawValue})
				
			case .BitDepth:
				availableFilters[v.rawValue] = FilterBitDepth.allCases.map({$0.rawValue})
				
			case .Chroma:
				availableFilters[v.rawValue] = FilterChroma.allCases.map({$0.rawValue})
				
			case .InternalND:
				availableFilters[v.rawValue] = FilterND.allCases.map({$0.rawValue})
				
			case .Compression:
				availableFilters[v.rawValue] = FilterCompression.allCases.map({$0.rawValue})
				
			case .Netflix:
				availableFilters[v.rawValue] = FilterNetflix.allCases.map({$0.rawValue})
				
			}

			// presumably, Active (selected) states for the Filters in each
			//	category will be saved for persistance or used elsewhere in the app
			// for now, we initialize the Active array for each filter to empty
			activeFilters[v.rawValue] = []
		}
		
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
		
		cell.fillData(available: available, active: active)
		
		cell.tagStateChanged = { [weak self] c, s, b in
			guard let self = self else { return }
			if b {
				self.activeFilters[cell.filterCategory]?.append(s)
			} else {
				self.activeFilters[cell.filterCategory]?.removeAll(where: {$0 == s})
			}
		}
		
		return cell
	}
	
}

