//
//  TetsViewController.swift
//  CSDC-task
//
//  Created by Нұрмұхан Дәукес on 20.06.2023.
//

import UIKit

extension UINavigationController {
    
    func setupNavBarColor() {
        let appearance = UINavigationBarAppearance ()
        appearance.backgroundColor = .red
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        self.navigationBar.scrollEdgeAppearance = appearance
        self.navigationBar.compactAppearance = appearance
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

        UIBarButtonItem.appearance().tintColor = .white
    }
}
