//
//  LoginViewController.swift
//  AutoTrackApp
//
//  Created by Lucas Rodrigues Dias on 27/03/25.
//

import UIKit

class LoginViewController: UIViewController {
    
    let viewModel: LoginViewModel
    
    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .primaryColor
    }
    
}
