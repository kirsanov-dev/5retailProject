//
//  TabBarController.swift
//  5retailProject
//
//  Created by Oleg Kirsanov on 16.10.2021.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    private var scenes: [Scene] = [.main, .catalog, .basket, .profile]
    
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
        
        let tabBarItems = scenes.map {
            UITabBarItem(
                title: $0.title,
                image: $0.image,
                selectedImage: $0.selectedImage
            ) }
        
        let initialViewControllers = scenes.compactMap { $0.viewController }
        
        let viewControllers = zip(tabBarItems, initialViewControllers)
            .compactMap { tabItem, viewController -> UIViewController in
                viewController.tabBarItem = tabItem
                return viewController
            }
        
        setViewControllers(viewControllers, animated: true)
    }
}
