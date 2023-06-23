//
//  SceneDelegate.swift
//  CSDC-task
//
//  Created by Нұрмұхан Дәукес on 20.06.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        let viewController = MainViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        //navigationController.setupNavBarColor()
        window.rootViewController = navigationController
        
//        window.rootViewController = SizeDelegateViewController()
        self.window = window
        self.window?.makeKeyAndVisible()

    }

    

}

