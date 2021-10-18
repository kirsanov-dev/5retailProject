//
//  TabBarController.swift
//  5retailProject
//
//  Created by Oleg Kirsanov on 16.10.2021.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        var tabFrame = tabBar.frame
        tabFrame.size.height = 90
        tabBar.frame = tabFrame
        tabBar.backgroundColor = .systemGray6
    }
    
    private func setupViewControllers() {
        
        let tabBarItems = [
            UITabBarItem(title: "Главная", image: UIImage(systemName: "house"), tag: 0),
            UITabBarItem(title: "Каталог", image: UIImage(systemName: "circle.grid.2x2"), tag: 1),
            UITabBarItem(title: "Корзина", image: UIImage(systemName: "cart"), tag: 2),
            UITabBarItem(title: "Профиль", image: UIImage(systemName: "person"), tag: 3)
        ]
        
        let initialViewControllers = [
            ViewController(),
            ViewController(),
            ViewController(),
            ViewController()
        ]
        
        let viewControllers = zip(tabBarItems, initialViewControllers)
            .compactMap { tabItem, viewController -> UIViewController in
                viewController.tabBarItem = tabItem
                return viewController
            }
        
        setViewControllers(viewControllers, animated: true)
    }
}
