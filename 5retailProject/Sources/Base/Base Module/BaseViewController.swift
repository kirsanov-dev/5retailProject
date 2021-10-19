//
//  BaseViewController.swift
//  5retailProject
//
//  Created by Oleg Kirsanov on 19.10.2021.
//

import UIKit

class BaseViewController: UIViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        setupHierarchy()
        setupLayout()
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Settings
    
    func setupHierarchy() {
        
    }
    
    func setupLayout() {
        
    }
    
    func setupView() {
        
    }
    
    
}
