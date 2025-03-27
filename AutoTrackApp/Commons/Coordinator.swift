//
//  Coordinator.swift
//  AutoTrackApp
//
//  Created by Lucas Rodrigues Dias on 27/03/25.
//

import Foundation
import UIKit

///user o protocolo "Coordinator" para implementar nos coordinators
///aqui teremos abstração de alguns pontos que iremos utilizar
/// /*viewController*/ -> todo inicio do fluxo necessita de uma UIViewController
/// entao tente sempre quando "pushar" um fluxo segurar a referencia da view controller do mesmo
/// /*navigationController*/ -> todo fluxo precisa de uma UINavigationController
/// entao

/**
    R é um typealias para LocalizableFiles,
    ele utiliza o NSLocalizedString para administrarmos os textos dentro do aplicativo
 
  `LocalizableFiles` Nome do arquivo de string.
 
  `key: String` Chave da string.
  `args: [CVarArg]` Argumentos para substituição de texto Ex: %@.
 
  - *Exemplo da utilização da função:*
  *         R.default.localized(key: "title")
  *         R.default.localizedWithArgs(key: "error", args: [error.localizedDescription])
 */

protocol Coordinator {
    var childCoordinator: Coordinator? { get set }
    var viewController: UIViewController { get set }
    var navigationController: UINavigationController? { get set }
    
    func start(using navigationController: UINavigationController)
}
