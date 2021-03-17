//
//  ProfileViewController.swift
//  MVPExample
//
//  Created by Rustam Nurgaliev on 13.03.2021.
//

import UIKit

final class ProfileViewController: UIViewController {
    // MARK: - Properties
    
    var presenter: ProfileViewOutput?
    
    // MARK: - Live cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Private methods

}

// MARK: - ProfileViewController

extension ProfileViewController: ProfileViewInput {
}
