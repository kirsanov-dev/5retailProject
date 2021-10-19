//
//  AppCoordinator.swift
//  5retailProject
//
//  Created by Oleg Kirsanov on 19.10.2021.
//

import Foundation
import UIKit

final class AppCoordinator: BaseCoordinator {
    
    var rootViewController: UIViewController? {
        return window.rootViewController
    }
    
    private var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        window.rootViewController = MainTabBarController()
        window.makeKeyAndVisible()
    }
    
    // MARK: - Private methods
    
    private func startTabBarController() {
        
    }
}
