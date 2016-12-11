//
// Created by Kamil Wysocki on 13/11/2016.
// Copyright (c) 2016 k8mil. All rights reserved.
//

import UIKit

class AppleDescriptionViewController: UIViewController {

    var apple: Apple!
    var mainView: AppleDescriptionView!

    init(apple: Apple) {
        super.init(nibName: nil, bundle: nil)
        self.apple = apple
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func loadView() {
        super.loadView()
        view.backgroundColor = .white
        edgesForExtendedLayout = []
        createMainView()
    }

    private func createMainView() {
        mainView = AppleDescriptionView(apple: apple)
        view.addSubview(mainView)
        mainView.translatesAutoresizingMaskIntoConstraints = false

        mainView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mainView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        mainView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
