//
// Created by Kamil Wysocki on 11/12/2016.
// Copyright (c) 2016 k8mil. All rights reserved.
//

import UIKit

class AppleImageView: UIImageView {

    var appleDescription : String!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    init(appleDescription: String, image: UIImage?) {
        super.init(image : image)
        self.appleDescription = appleDescription
    }
	
	// override point(inside:with:) to set if the view was clicked or not
	
	override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
		guard let superview = superview else {
			return false
		}
		let locationInView = convert(point, from: superview)
		return bounds.contains(locationInView)
	}

}
