//
//  MainView.swift
//  5retailProject
//
//  Created by Oleg Kirsanov on 19.10.2021.
//

import UIKit

final class MainView: BaseViewController {
    
    var viewModel: MainViewModelType!
    
    override func setupView() {
        super.setupView()
        view.backgroundColor = .systemBrown
    }
}
