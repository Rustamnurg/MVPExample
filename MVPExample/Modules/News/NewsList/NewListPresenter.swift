//
//  NewListPresenter.swift
//  MVPExample
//
//  Created by Rustam Nurgaliev on 13.03.2021.
//

import Foundation

final class NewListPresenter {
    private weak var view: NewListViewInput?
    
    init(view: NewListViewInput) {
        self.view = view
    }
}

// MARK: - NewListViewOutput

extension NewListPresenter: NewListViewOutput {
}
