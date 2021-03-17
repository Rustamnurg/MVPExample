//
//  SignInViewController.swift
//  MVPExample
//
//  Created by Rustam Nurgaliev on 13.03.2021.
//

import UIKit

final class SignInViewController: UIViewController {
    // MARK: - Properties
    
    private lazy var contentView = SignInView()
    var presenter: SignInViewOutput?
    
    // MARK: - Live cycle
    
    override func loadView() {
        view = contentView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addTargets()
    }
    
    // MARK: - Private methods
    
    private func addTargets() {
        contentView.loginTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        contentView.passwordTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        presenter?.validate(
            login: contentView.loginTextField.text,
            password: contentView.passwordTextField.text
        )
    }
}

// MARK: - SignInViewController

extension SignInViewController: SignInViewInput {
    func updateState(viewModel: SignInView.ViewModel) {
        contentView.configure(with: viewModel)
    }
}
