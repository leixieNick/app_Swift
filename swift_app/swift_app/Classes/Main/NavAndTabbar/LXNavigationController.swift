//
//  LXNavigationController.swift
//  swift_app
//
//  Created by asdc on 2020/11/16.
//

import UIKit
class LXNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavBarAppearence()
    }
    
    func setupNavBarAppearence() {
        
    }
}

extension LXNavigationController{
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if children.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
}
