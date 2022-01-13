//
//  RangeSlider.swift
//  CustomSlider
//
//  Created by Zak Ray on 1/10/22.
//

import Foundation
import UIKit
import LocalAuthentication

public class RangeSlider: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var leftThumb: UIView!
    @IBOutlet weak var rightThumb: UIView!
    @IBOutlet var leftPan: UIPanGestureRecognizer!
    @IBOutlet var rightPan: UIPanGestureRecognizer!
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    @IBOutlet weak var outerTrack: UIView!
    
    public var leftThumbCenter = 0.0
    public var rightThumbCenter = 0.0
    
    public var lowValue = 0.0
    public var highValue = 1.0
    
	public var innerTrackColor: UIColor = .black
    
	public var myHeight: CGFloat = 0
    
	public func reloadData() {
		print(bounds.width)
		if bounds.width < 300 {
			myHeight = 320
		} else {
			myHeight = 120
		}
	}
	
    // MARK: VIEW DID LOAD
    
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
        Bundle.main.loadNibNamed("RangeSlider", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        leftThumbCenter = self.bounds.minX + (leftThumb.bounds.width/2)
        rightThumbCenter = self.bounds.maxX - (rightThumb.bounds.width)
        
        leftThumb.layer.cornerRadius = (rightThumb.bounds.width/2)
        rightThumb.layer.cornerRadius = (rightThumb.bounds.width/2)
        
        outerTrack.layer.cornerRadius = outerTrack.bounds.height/2
        
        updateInnerTrack()
        
        recolor()
    }
    
    
    public func recolor() {
        leftThumb.backgroundColor = .white
        rightThumb.backgroundColor = .white
        outerTrack.backgroundColor = Colors.cameraPrimaryInsetInset
        innerTrackColor = Colors.cameraPrimary
    }
    
    
    public func updateUI() {
        updateInnerTrack()
        leftLabel.text = "\(lowValue)"
        rightLabel.text = "\(highValue)"
        leftThumb.center = CGPoint( x: leftThumbCenter, y: leftThumb.center.y )
        rightThumb.center = CGPoint( x: rightThumbCenter, y: rightThumb.center.y )
    }
    
    

    
    @IBAction public func handlePan(_ gesture: UIPanGestureRecognizer) {
      
        // MOVE THE VIEW
        
      let translation = gesture.translation(in: contentView)

      guard let gestureView = gesture.view else { return }

        let minX = self.bounds.minX + (leftThumb.bounds.width/2)
        let maxX = self.bounds.maxX - (rightThumb.bounds.width/2)
        
        let gestureX = gestureView.center.x + translation.x
        var gestureXCapped = 0.0
        
        switch gesture {
        case leftPan:
            if gestureX < minX { gestureXCapped = minX }
            else if gestureX > rightThumb.center.x { gestureXCapped = rightThumb.center.x }
            else { gestureXCapped = gestureX }
            leftThumbCenter = gestureXCapped
        case rightPan:
            if gestureX < leftThumb.center.x { gestureXCapped = leftThumb.center.x }
            else if gestureX > maxX { gestureXCapped = maxX }
            else { gestureXCapped = gestureX }
            rightThumbCenter = gestureXCapped
        default: break
        }
        
//        gestureView.center = CGPoint( x: gestureXCapped, y: gestureView.center.y )
        
        gesture.setTranslation(.zero, in: contentView)
        
        
        // UPDATE THE VALUES
        
        var valueMapped = Double(gestureView.center.x).converting(from: minX...maxX, to: 0...1)
        if valueMapped < 0 || valueMapped > 1 { valueMapped = 0 }
        
        switch gesture {
        case leftPan:
            lowValue = valueMapped
        case rightPan:
            highValue = valueMapped
        default: break
        }
        
        
        
        // UPDATE UI
        
        updateUI()
        
    }

    

    public func updateInnerTrack() {
        for layer in contentView.layer.sublayers! {
            if layer.backgroundColor == innerTrackColor.cgColor || layer.backgroundColor == UIColor.black.cgColor {
                layer.removeFromSuperlayer()
            }
        }
        
        let trackWidth = rightThumbCenter - leftThumbCenter
        let trackLayer = CALayer()
        trackLayer.frame = CGRect(x: leftThumbCenter, y: self.bounds.height-leftThumb.bounds.height, width: trackWidth, height: leftThumb.bounds.height)
        trackLayer.backgroundColor = innerTrackColor.cgColor
        contentView.layer.insertSublayer(trackLayer, at: 1)
    }
        
//	public override var intrinsicContentSize: CGSize {
//		var sz = super.intrinsicContentSize
//		sz.height = 120
//		return sz
//	}
}




//
//  Double Extensions.swift
//  Cameras + Formats
//
//  Created by Zak Ray on 2/6/20.
//  Copyright © 2020 Zak Ray. All rights reserved.
//

public extension Double {
    
    func truncate(places: Int) -> Double {
        return Double(floor(pow(10.0, Double(places)) * self)/pow(10.0, Double(places)))
    }
    func converting(from input: ClosedRange<Self>, to output: ClosedRange<Self>) -> Self {
        let x = (output.upperBound - output.lowerBound) * (self - input.lowerBound)
        let y = (input.upperBound - input.lowerBound)
        return x / y + output.lowerBound
    }

}
