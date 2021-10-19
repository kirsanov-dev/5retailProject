//
//  BaseViewModel.swift
//  5retailProject
//
//  Created by Oleg Kirsanov on 19.10.2021.
//

import Foundation

protocol BaseViewModel {
    
    /// Method execute when the module was started
    func onStart()
    
    /// Method execute when model did appear
    func onUpdate()
}
