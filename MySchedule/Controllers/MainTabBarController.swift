//
//  ViewController.swift
//  MySchedule
//
//  Created by Егор Бадмаев on 10.12.2021.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
    }

    
    func createNavController(viewController: UIViewController, itemName: String, itemImage: String) -> UINavigationController {
        // systemName появился только с iOS 14, вроде как можно будет просто named указать
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: itemImage)?.withAlignmentRectInsets(.init(top: 10, left: 0, bottom: 0, right: 0)), tag: 0)
        // withAlignmentRectInsets выравниваем (по факту меняем только сверху)
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 10)
        // т.к. мы сместили картинку, надо будет сместить сам item по вертикали ниже
        // создаём NavController
        let navController = UINavigationController(rootViewController: viewController)
        return navController
    }
}
