//
//  ViewController.swift
//  testTabController
//
//  Created by Gary Jeppesen on 5/24/21.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        UITabBar.appearance().barTintColor = UIColor.systemGray5.withAlphaComponent(0.9)
        
        let item1 = Tab1ViewController()
        let icon1 = UITabBarItem(title: "Tab 1", image: UIImage(systemName: "plus"), selectedImage: UIImage(systemName: "plus"))
        item1.tabBarItem = icon1
        
        let item2 = Tab2ViewController()
        let icon2 = UITabBarItem(title: "Tab 2", image: UIImage(systemName: "plus"), selectedImage: UIImage(systemName: "plus"))
        item2.tabBarItem = icon2
        
        let item3 = Tab3ViewController()
        let icon3 = UITabBarItem(title: "Tab 3", image: UIImage(systemName: "plus"), selectedImage: UIImage(systemName: "plus"))
        item3.tabBarItem = icon3
        
        let item4 = Tab4ViewController()
        let icon4 = UITabBarItem(title: "Tab 4", image: UIImage(systemName: "plus"), selectedImage: UIImage(systemName: "plus"))
        item4.tabBarItem = icon4
                
        let controllers = [item1, item2, item3, item4]
        self.viewControllers = controllers.map { UINavigationController(rootViewController: $0) }

    }


}

