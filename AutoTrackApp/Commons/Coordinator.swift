//
//  Coordinator.swift
//  AutoTrackApp
//
//  Created by Lucas Rodrigues Dias on 27/03/25.
//

import Foundation
import UIKit

/// O `navigationController` gerencia a pilha de navegação da interface.
/// Ele é responsável por controlar a navegação entre as telas dentro do fluxo do Coordinator.
/// A boa pratica é sempre mantermos uma navigation durante um fluxo e evitar inicializar outras demais
/// Por este motivo temos como argumento no start do `Coordinator` uma UINavigation
///
/// Exemplo de uso:
/// ```
/// func start(using navigationController: UINavigationController)
/// self.navigationController = navigationController
/// navigationController.pushViewController(viewController, animated: true)
/// ```

/// /// O `childCoordinator` é um Coordinator filho que pode ser iniciado dentro deste Coordinator.
/// Ele é útil para dividir responsabilidades e evitar que um único Coordinator fique muito grande.
/// Passando no argumento do start a navigation que ja esta inicializada
///
/// Exemplo de uso:
/// ```
/// let childCoordinator = LoginCoordinator()
/// childCoordinator = childCoordinator
/// child.start(using: navigationController)
/// ```

/// O `viewController` é a tela principal gerenciada por este Coordinator.
/// Ele é responsável por exibir a interface gráfica correspondente ao fluxo que o Coordinator controla.
/// Geralmente sempre utilizada no construtor/inicializador do coordinator que esta sendo chamado
/// E assim seguindo o fluxo implementando a `viewController` dentro do `push` no start como mostrado no exemplo de uso da `navigation`
///
/// Exemplo de uso:
/// ```
/// let loginViewController = LoginViewController(viewModel: LoginViewModel())
/// self.viewController = loginViewController
/// ```

/// `start(using navigationController: UINavigationController)`
/// Método para iniciar o Coordinator, recebendo um `UINavigationController` para controlar a navegação.
/// - Parameter navigationController: O controlador de navegação onde as telas serão empilhadas.
///
/// Exemplo de uso:
/// ```
/// let navigation = UINavigationController()
/// let loginCoordinator = LoginCoordinator()
/// loginCoordinator.start(using: navigation)
/// ```

protocol Coordinator {
    var childCoordinator: Coordinator? { get set }
    var viewController: UIViewController { get set }
    var navigationController: UINavigationController? { get set }
    
    func start(using navigationController: UINavigationController)
    
    ///TODO: `func stop()` implementar futuramente um stop para matar as referencias e evitar retain cycle
}
