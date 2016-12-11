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


}
