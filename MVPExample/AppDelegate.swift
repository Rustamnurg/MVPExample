//
//  AppDelegate.swift
//  MVPExample
//
//  Created by Rustam Nurgaliev on 13.03.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setRootViewController()
        return true
    }

    private func setRootViewController() {
        let viewController = OnboardingViewController()
        let presenter = OnboardingPresenter(view: viewController)
        viewController.presenter = presenter
        window = UIWindow(frame: UIScreen.main.bounds)
        let nav = UINavigationController(rootViewController: viewController)
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
    }
}
