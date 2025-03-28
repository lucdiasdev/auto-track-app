//
//  AppCoordinator.swift
//  AutoTrackApp
//
//  Created by Lucas Rodrigues Dias on 27/03/25.
//

import Foundation
import UIKit

class AppCoordinator {
    
    let window: UIWindow
    
    var childCoordinator: Coordinator?
    var navigationController: UINavigationController?
    
    init(_ window: UIWindow) {
        self.window = window
    }
    
    func start(using navigationController: UINavigationController) {
        self.navigationController = navigationController
        
        let loginCoordinator = LoginCoordinator()
        childCoordinator = loginCoordinator
        childCoordinator?.start(using: navigationController)
    }
    
}
