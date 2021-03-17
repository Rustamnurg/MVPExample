//
//  NewListViewController.swift
//  MVPExample
//
//  Created by Rustam Nurgaliev on 13.03.2021.
//

import UIKit

final class NewListViewController: UIViewController {
    // MARK: - Properties
    
    var presenter: NewListViewOutput?
    
    // MARK: - Live cycle
    
    // MARK: - Private methods

    @IBAction private func showProfileButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: StoryboardSegue.NewList.profile.rawValue, sender: nil)
    }
}

// MARK: - NewListViewController

extension NewListViewController: NewListViewInput {
}
