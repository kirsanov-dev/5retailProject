//
//  CatalogFlowCoordinator.swift
//  5retailProject
//
//  Created by Oleg Kirsanov on 19.10.2021.
//

import Foundation
import UIKit

final class CatalogFlowCoordinator: BaseCoordinator {
    
    var rootViewController: UIViewController?
    
    func start() {
        startCatalogModule()
    }
    
    // MARK: - Private Methods
    private func startCatalogModule() {
        let viewController = CatalogView()
        let viewModel = CatalogViewModel()
        viewController.viewModel = viewModel
        rootViewController = viewController
    }
    
}
