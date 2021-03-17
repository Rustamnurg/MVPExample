//
//  ProfilePresenter.swift
//  MVPExample
//
//  Created by Rustam Nurgaliev on 13.03.2021.
//

import Foundation

final class ProfilePresenter {
    private weak var view: ProfileViewInput?
    
    func set(view: ProfileViewInput) {
        self.view = view
    }
}

// MARK: - ProfileViewOutput

extension ProfilePresenter: ProfileViewOutput {
}
