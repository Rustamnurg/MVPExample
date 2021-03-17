//
//  SignInProtocols.swift
//  MVPExample
//
//  Created by Rustam Nurgaliev on 13.03.2021.
//

protocol SignInViewInput: AnyObject {
    func updateState(viewModel: SignInView.ViewModel)
}

protocol SignInViewOutput: AnyObject {
    func validate(login: String?, password: String?)
}
