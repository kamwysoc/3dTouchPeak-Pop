//
// Created by Kamil Wysocki on 13/11/2016.
// Copyright (c) 2016 k8mil. All rights reserved.
//

import UIKit

class AppleDescriptionView: UIView {

    private var imageView: UIImageView!
    private var appleDescriptionLabel: UILabel!
    var apple: Apple!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    init(apple: Apple) {
        super.init(frame: CGRect.zero)
        self.apple = apple
        backgroundColor = .white

        createImageView()
        createAppleDescriptionLabel()
        applyConstraints()
    }

    private func createImageView() {
        imageView = UIImageView()
        imageView.image = apple.image
        addSubview(imageView)
    }

    private func createAppleDescriptionLabel() {
        appleDescriptionLabel = UILabel()
        appleDescriptionLabel.numberOfLines = 0
        appleDescriptionLabel.text = apple.description
        appleDescriptionLabel.textAlignment = .center
        addSubview(appleDescriptionLabel)
    }

    private func applyConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        appleDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false

        imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -50).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 100).isActive = true

        appleDescriptionLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        appleDescriptionLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        appleDescriptionLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true

    }

}
