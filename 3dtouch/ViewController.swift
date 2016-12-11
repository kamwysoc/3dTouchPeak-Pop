//
//  ViewController.swift
//  3dtouch
//
//  Created by Kamil Wysocki on 11/11/2016.
//  Copyright (c) 2016 k8mil. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    let greenAppleImageView = AppleImageView(appleDescription: "This is a green apple", image: UIImage(named :"green_apple.png"))
    let redAppleImageView = AppleImageView(appleDescription: "This is a red apple", image: UIImage(named :"red_apple.jpg"))

    var forceTouchableViews = [AppleImageView]()

    override func loadView() {
        super.loadView()
        setUpControllerSettings()
        setUpConstraints()

        forceTouchableViews.append(redAppleImageView)
        forceTouchableViews.append(greenAppleImageView)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if traitCollection.forceTouchCapability == .available {
            self.registerForPreviewing(with: self, sourceView: view)
        }
    }

    private func setUpControllerSettings() {
        view.backgroundColor = .gray
        title = "3d Touch"
        edgesForExtendedLayout = []
    }

    private func setUpConstraints() {
        view.addSubview(redAppleImageView)
        view.addSubview(greenAppleImageView)

        greenAppleImageView.translatesAutoresizingMaskIntoConstraints = false;
        redAppleImageView.translatesAutoresizingMaskIntoConstraints = false;

        greenAppleImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        greenAppleImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75).isActive = true
        greenAppleImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        greenAppleImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true

        redAppleImageView.topAnchor.constraint(equalTo: greenAppleImageView.bottomAnchor, constant: 25).isActive = true
        redAppleImageView.leftAnchor.constraint(equalTo: greenAppleImageView.leftAnchor).isActive = true
        redAppleImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        redAppleImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }

}

extension ViewController: UIViewControllerPreviewingDelegate {

    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        for forceTouchableView in forceTouchableViews where forceTouchableView.wasTouched(in: location) {
            let apple = Apple(description: forceTouchableView.appleDescription, image: forceTouchableView.image!)
            let vc = AppleDescriptionViewController(apple: apple)
            return vc
        }
        return nil
    }

    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
        navigationController?.pushViewController(viewControllerToCommit, animated: true)
    }

}