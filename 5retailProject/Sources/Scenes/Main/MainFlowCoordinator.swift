//
//  MainFlowCoordinator.swift
//  5retailProject
//
//  Created by Oleg Kirsanov on 19.10.2021.
//

import Foundation
import UIKit

final class MainFlowCoordinator: BaseCoordinator {
    
    var rootViewController: UIViewController?
    
    func start() {
        startMainModule()
    }
    
    // MARK: - Private Methods
    private func startMainModule() {
        let viewController = MainView()
        let viewModel = MainViewModel()
        viewController.viewModel = viewModel
        rootViewController = viewController
    }
    
}
