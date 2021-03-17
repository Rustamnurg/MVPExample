//
//  OnboardingViewController.swift
//  MVPExample
//
//  Created by Rustam Nurgaliev on 13.03.2021.
//

import UIKit

final class OnboardingViewController: UIViewController {
    // MARK: - Properties
    
    private lazy var contentView = OnboardingView()
    var presenter: OnboardingViewOutput?
    
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
        contentView.signInButton.addTarget(self, action: #selector(singInTapped), for: .touchUpInside)
        contentView.singUpButton.addTarget(self, action: #selector(singUpTapped), for: .touchUpInside)
    }
    
    @objc private func singUpTapped() {
        let signInVC = SignInViewController()
        signInVC.modalPresentationStyle = .fullScreen
        let signInPresenter = SignInPresenter(view: signInVC)
        signInVC.presenter = signInPresenter
        present(signInVC, animated: true)
    }
    
    @objc private func singInTapped() {
        let tabbar = StoryboardScene.Tabbar.tabbar.instantiate()
        UIApplication.shared.windows.first?.rootViewController = tabbar
    }
}

// MARK: - OnboardingViewController

extension OnboardingViewController: OnboardingViewInput {
}
