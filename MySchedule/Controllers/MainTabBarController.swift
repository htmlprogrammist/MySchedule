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
    
    func setupTabBar() {
        let scheduleViewController = createNavController(viewController: ScheduleViewController(), itemName: "Schedule", itemImage: "calendar.badge.clock")
        let tasksViewController = createNavController(viewController: TasksViewController(), itemName: "Tasks", itemImage: "text.badge.checkmark")
        let contactsViewController = createNavController(viewController: ContactsTableViewController(), itemName: "Contacts", itemImage: "rectangle.stack.person.crop")
        
        viewControllers = [scheduleViewController, tasksViewController, contactsViewController]
    }
    
    func createNavController(viewController: UIViewController, itemName: String, itemImage: String) -> UINavigationController {
        // systemName появился только с iOS 14, вроде как можно будет просто named указать
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: itemImage), tag: 0)
        // let item = UITabBarItem(title: itemName, image: UIImage(named: itemImage)?.withRenderingMode(.alwaysOriginal), tag: 0)  // что-то не работает
        
        // по мнению автора, нужно опустить табБарАйтемы, потому что они слишком высоко, но мне так не укажется, поэтому вот.
        // let item = UITabBarItem(title: itemName, image: UIImage(systemName: itemImage)?.withAlignmentRectInsets(.init(top: 10, left: 0, bottom: 0, right: 0)), tag: 0)
        // withAlignmentRectInsets выравниваем (по факту меняем только сверху)
        // item.titlePositionAdjustment = .init(horizontal: 0, vertical: 10)
        // т.к. мы сместили картинку, надо будет сместить сам item по вертикали ниже
        
        // создаём NavController
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem = item
        // создаём навКонтроллер и добавляем табБарАйтем
        return navController
    }
}
