//
//  LoginCoordinator.swift
//  AutoTrackApp
//
//  Created by Lucas Rodrigues Dias on 27/03/25.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    
    var viewController: UIViewController
    var childCoordinator: Coordinator?
    var navigationController: UINavigationController?
    
    init() {
        let viewModel = LoginViewModel()
        let viewController = LoginViewController(viewModel: viewModel)
        self.viewController = viewController
    }
    
    func start(using navigationController: UINavigationController) {
        self.navigationController = navigationController
        navigationController.pushViewController(viewController, animated: true)
    }
    
}
