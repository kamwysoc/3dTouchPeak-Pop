//
// Created by Kamil Wysocki on 02/12/2016.
// Copyright (c) 2016 k8mil. All rights reserved.
//

import UIKit

extension UIView {
    func wasTouched(in point: CGPoint) -> Bool {
        guard let superview = superview else {
            return false
        }
        let locationInView = convert(point, from: superview)
        return bounds.contains(locationInView)
    }
}