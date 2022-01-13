//
//  FilterTagsTableViewCell.swift
//  TagsTableExample
//
//  Created by Don Mag on 1/11/22.
//

import UIKit

class FilterTagsTableViewCell: UITableViewCell {

	static public let identifier: String = "FilterTagsTableViewCell"

	// "callback" closure
	public var tagStateChanged: ((UITableViewCell, String, Bool) -> ())?

	public var filterCategory: String = "" {
		didSet {
			filterTitle.text = filterCategory
		}
	}

	// we'll track the Active (selected) tags
	//	as well as sending the tag states back to our
	//	controller via the "callback" closure
	private var activeTags: [String] = []
	
	public var insetColor: UIColor = .blue
	public var textColor: UIColor = .white

	private let filterTitle: UILabel = {
		let v = UILabel()
		v.font = .systemFont(ofSize: 19, weight: .heavy)
		v.textColor = .white
		return v
	}()
	
	private let tagsView: TagLabelsView = {
		let v = TagLabelsView()
		return v
	}()
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		commonInit()
	}
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		commonInit()
	}
	
	func commonInit() -> Void {

		let stackView: UIStackView = {
			let v = UIStackView()
			v.axis = .vertical
			v.spacing = 10
			return v
		}()

		contentView.addSubview(stackView)
		stackView.addArrangedSubview(filterTitle)
		stackView.addArrangedSubview(tagsView)

		tagsView.minimumInteritemSpacing = 6
		tagsView.minimumLineSpacing = 6
		
		// give it a background color if we want to see its frame
		//tagsView.backgroundColor = .yellow
		
		// use autolayout
		stackView.translatesAutoresizingMaskIntoConstraints = false
		
		// constrain tagsView top / leading / trailing / bottom to
		//	contentView Layout Margins Guide
		let g = contentView.layoutMarginsGuide
		
		// avoids auto-layout warnings
		let bc = stackView.bottomAnchor.constraint(equalTo: g.bottomAnchor, constant: 0.0)
		bc.priority = .required - 1
		
		NSLayoutConstraint.activate([

			stackView.topAnchor.constraint(equalTo: g.topAnchor, constant: 0.0),
			stackView.leadingAnchor.constraint(equalTo: g.leadingAnchor, constant: 0.0),
			stackView.trailingAnchor.constraint(equalTo: g.trailingAnchor, constant: 0.0),
			bc,
			
		])
		
		tagsView.tagStateChanged = { [weak self] str, b in
			guard let self = self else { return }
			if b {
				self.activeTags.append(str)
			} else {
				self.activeTags.removeAll(where: {$0 == str})
			}
			// tagsView told us a tag state changed (tag was tapped)
			//	so "callback" to our controller
			self.tagStateChanged?(self, str, b)
		}
		
	}
	
	public func fillData(available tagNames: [String], active selectedTagNames: [String]) -> Void {

		tagsView.insetColor = insetColor
		tagsView.textColor = textColor
		
		tagsView.fillData(tagNames, activeNames: selectedTagNames)

		// hide tagsView if no tags available
		tagsView.isHidden = tagNames.count == 0
		
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
