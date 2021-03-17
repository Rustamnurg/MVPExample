//
//  SignInPresenter.swift
//  MVPExample
//
//  Created by Rustam Nurgaliev on 13.03.2021.
//

import Foundation

final class SignInPresenter {
    private weak var view: SignInViewInput?
    
    init(view: SignInViewInput) {
        self.view = view
    }
}

// MARK: - SignInViewOutput

extension SignInPresenter: SignInViewOutput {
    func validate(login: String?, password: String?) {
        if login?.isEmpty == false, password?.isEmpty == false {
            view?.updateState(viewModel: SignInView.ViewModel(isActiveNextButton: true))
        } else {
            view?.updateState(viewModel: SignInView.ViewModel(isActiveNextButton: false))
        }
    }
}
