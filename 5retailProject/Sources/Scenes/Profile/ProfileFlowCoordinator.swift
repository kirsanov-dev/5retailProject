//
//  ProfileFlowCoordinator.swift
//  5retailProject
//
//  Created by Oleg Kirsanov on 19.10.2021.
//

import Foundation
import UIKit

final class ProfileFlowCoordinator: BaseCoordinator {
    
    var rootViewController: UIViewController?
    
    func start() {
        startProfileModule()
    }
    
    // MARK: - Private Methods
    private func startProfileModule() {
        let viewController = ProfileView()
        let viewModel = ProfileViewModel()
        viewController.viewModel = viewModel
        rootViewController = viewController
    }
    
}
