//
//  OnboardingPresenter.swift
//  MVPExample
//
//  Created by Rustam Nurgaliev on 13.03.2021.
//

import Foundation

final class OnboardingPresenter {
    private weak var view: OnboardingViewInput?
    
    init(view: OnboardingViewInput) {
        self.view = view
    }
}

extension OnboardingPresenter: OnboardingViewOutput {
}
