//
//  TagLabelsView.swift
//  TagsTableExample
//
//  Created by Don Mag on 1/11/22.
//

import UIKit

class TagLabelsView: UIView {

	// "callback" closure
	public var tagStateChanged: ((String, Bool) -> ())?
	
	public var insetColor: UIColor = .blue
	public var textColor: UIColor = .white

	// "tags" are UILabels, so
	
	//	label height
	public var tagHeight:CGFloat = 30
	//	left/right label padding
	public var tagPadding: CGFloat = 16

	// inter-item / inter-line
	public var minimumInteritemSpacing: CGFloat = 8
	public var minimumLineSpacing: CGFloat = 8
	
	private var tagNames: [String] = []
	private var selectedTags: [String] = []
	
	private var intrinsicHeight: CGFloat = 0
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		commonInit()
	}
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		commonInit()
	}
	private func commonInit() -> Void {
		// tap gesture to allow tapping on tag labels
		let g = UITapGestureRecognizer(target: self, action: #selector(gotTap(_:)))
		addGestureRecognizer(g)
	}
	
	@objc func gotTap(_ g: UITapGestureRecognizer) {
		// we got a tap action, so
		//	loop through subviews
		//	if the tap point is inside a label frame
		//		toggle its Active (selected) state
		//		and use the "callback" to inform our controller
		let p = g.location(in: self)
		for i in 0..<subviews.count {
			if let v = subviews[i] as? UILabel {
				if v.frame.contains(p) {
					let tappedTag: String = tagNames[i]
					var isSelected: Bool = selectedTags.contains(tappedTag)
					if isSelected {
						// deselect it
						selectedTags.removeAll(where: {$0 == tappedTag})
						v.backgroundColor = insetColor
						v.textColor = textColor
					} else {
						// select it
						selectedTags.append(tappedTag)
						v.backgroundColor = .white
						v.textColor = .black
					}
					// we've now either selected it or deselected it, so
					//	toggle the previous state
					isSelected.toggle()
					v.backgroundColor = isSelected ? .white : insetColor
					v.textColor = isSelected ? .black : textColor
					// "callback"
					tagStateChanged?(tappedTag, isSelected)
					break
				}
			}
		}
	}
	
	public func fillData(_ availableNames: [String], activeNames: [String]) -> Void {
		self.tagNames = availableNames
		self.selectedTags = activeNames
		addTagLabels()
	}
	
	private func addTagLabels() -> Void {
		
		// if we already have tag labels (or buttons, etc)
		//	remove any excess (e.g. we had 10 tags, new set is only 7)
		while self.subviews.count > tagNames.count {
			self.subviews[0].removeFromSuperview()
		}
		
		// if we don't have enough labels, create and add as needed
		while self.subviews.count < tagNames.count {
			
			// create a new label
			let newLabel: UILabel = UILabel()
			
			// set its properties (title, colors, corners, etc)
			newLabel.textAlignment = .center
			newLabel.layer.masksToBounds = true
			newLabel.layer.cornerRadius = 13
			
			newLabel.font = .boldSystemFont(ofSize: 15)

			addSubview(newLabel)
			
		}
		
		// now loop through labels and set text, frame, colors
		for (str, v) in zip(tagNames, self.subviews) {
			guard let label = v as? UILabel else {
				fatalError("non-UILabel subview found!")
			}
			label.text = str
			label.backgroundColor = selectedTags.contains(str) ? .white : insetColor
			label.textColor = selectedTags.contains(str) ? .black : textColor
			label.frame.size.width = label.intrinsicContentSize.width + tagPadding
			label.frame.size.height = tagHeight
		}
		
	}
	
	private func displayTagLabels() {
		
		var currentOriginX: CGFloat = 0
		var currentOriginY: CGFloat = 0
		
		// for each label in the array
		self.subviews.forEach { v in
			
			guard let label = v as? UILabel else {
				fatalError("non-UILabel subview found!")
			}
			
			// if current X + label width will be greater than container view width
			//  "move to next row"
			if currentOriginX + label.frame.width > bounds.width {
				currentOriginX = 0
				currentOriginY += tagHeight + minimumLineSpacing
			}
			
			// set the btn frame origin
			label.frame.origin.x = currentOriginX
			label.frame.origin.y = currentOriginY
			
			// increment current X by btn width + spacing
			currentOriginX += label.frame.width + minimumInteritemSpacing
			
		}
		
		// update intrinsic height
		intrinsicHeight = currentOriginY + tagHeight
		invalidateIntrinsicContentSize()
		
	}
	
	// allow this view to set its own intrinsic height
	override var intrinsicContentSize: CGSize {
		var sz: CGSize = super.intrinsicContentSize
		sz.height = intrinsicHeight
		return sz
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		// re-layout the tag labels
		//	will be called when frame changes
		//	such as on device rotation, for example
		displayTagLabels()
	}
	
}
