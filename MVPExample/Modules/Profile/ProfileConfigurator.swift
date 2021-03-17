//
//  ProfileConfigurator.swift
//  MVPExample
//
//  Created by Rustam Nurgaliev on 17.03.2021.
//

import Foundation

final class ProfileConfigurator: NSObject {
    // MARK: - Instance Properties

    // swiftformat:disable strongOutlets
    @IBOutlet private weak var viewController: ProfileViewController!

    // MARK: - Instance Methods

    func configure(with viewController: ProfileViewController) {
        let presenter = ProfilePresenter()
        presenter.set(view: viewController)
        viewController.presenter = presenter
    }

    // MARK: - NSObject

    override func awakeFromNib() {
        super.awakeFromNib()

        configure(with: viewController)
    }
}
