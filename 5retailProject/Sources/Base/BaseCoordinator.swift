//
//  BaseCoordinator.swift
//  5retailProject
//
//  Created by Oleg Kirsanov on 19.10.2021.
//

import Foundation
import UIKit

protocol BaseCoordinator{
    var rootViewController: UIViewController? { get }
    func start()
}
