//
//  WelcomeWireframe.swift
//  TestViper
//
//  Created by william on 3/14/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//

import UIKit

class WelcomeWireframe{
    
    let welcomeVC: WelcomeTableViewController
    
    
    init() {
        welcomeVC = WelcomeTableViewController()
        
        let presenter = WelcomePresenter(wireframe: self, view: welcomeVC)
        let interactor = WelcomeInteractor(output: presenter)
        
        presenter.interactor = interactor
        welcomeVC.presenter = presenter
    }
    
    func pushToWelcomeViewController(withNavController navVC: UINavigationController) {
        navVC.pushViewController(welcomeVC, animated: true)
    }
}
