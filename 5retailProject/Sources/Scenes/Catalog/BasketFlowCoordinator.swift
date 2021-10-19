//
//  BasketFlowCoordinator.swift
//  5retailProject
//
//  Created by Oleg Kirsanov on 19.10.2021.
//

import Foundation
import UIKit

final class BasketFlowCoordinator: BaseCoordinator {
    
    var rootViewController: UIViewController?
    
    func start() {
        startBasketModule()
    }
    
    // MARK: - Private Methods
    private func startBasketModule() {
        let viewController = BasketView()
        let viewModel = BasketViewModel()
        viewController.viewModel = viewModel
        rootViewController = viewController
    }
    
}
