//
//  AppCoordinator.swift
//  AutoTrackApp
//
//  Created by Lucas Rodrigues Dias on 27/03/25.
//

import Foundation

class AppCoordinator: Coordinator {
    let window: UIWindow
    
    var childCoordinator: Coordinator?
    var viewController: UIViewController!
    var navigationController: UINavigationController?
    
    init(_ window: UIWindow) {
        self.window = window
        self.window.makeKeyAndVisible()
    }
    
    func startCoordinator() {
        //TODO: implementar regra para inicialização do app (flow login)
        ///basicamente a tela de login sera responsavel por varias partes da regra de inicialização do app
        ///tera a regra de negocio para saber se o cliente ja esta logado e ir direto para a home
        ///tera a regra de negocio para saber se o cliente nao esta logado e ir para a tela de login
        ///apos a implementacao da regra, ao iniciar a tela da home ele precisa alterar a root da navigation para a home
        
        let viewController = ATTabBarController()
        let navigationController = UINavigationController(rootViewController: viewController)
        self.viewController = viewController
        
        self.window.rootViewController = navigationController
        self.window.makeKeyAndVisible()
    }
    
}
