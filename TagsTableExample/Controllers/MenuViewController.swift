//
//  MenuViewController.swift
//  TagsTableExample
//
//  Created by Don Mag on 1/13/22.
//

import UIKit

class MenuViewController: UIViewController {

	// we'll setup the data here, so we can show persistence
	
	// let's use dictionaries to manage the
	//	Available and Active (selected) filters
	var availableFilters: [String : [String]] = [:]
	var activeFilters: [String : [String]] = [:]
	
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
		
    }
    
	@IBAction func showTagsTableController(_ sender: Any) {
		
		let vc = TesterViewController()
		vc.availableFilters = availableFilters
		vc.activeFilters = activeFilters
		vc.tagStateChanged = { [weak self] cat, s, b in
			guard let self = self else { return }
			if b {
				self.activeFilters[cat]?.append(s)
			} else {
				self.activeFilters[cat]?.removeAll(where: {$0 == s})
			}
		}
		self.navigationController?.pushViewController(vc, animated: true)
		
	}
	
}
