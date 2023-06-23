//
//  UILabel + Extension.swift
//  CSDC-task
//
//  Created by Нұрмұхан Дәукес on 22.06.2023.
//

import Foundation
import UIKit

extension UILabel {
    
    convenience init(text: String) {
        self.init()
        
        self.text = text
        self.textAlignment = .center
        self.font = .systemFont(ofSize: 12, weight: .regular)
        self.layer.borderColor = UIColor.gray.cgColor
        self.layer.borderWidth = 1
    }
    
}
