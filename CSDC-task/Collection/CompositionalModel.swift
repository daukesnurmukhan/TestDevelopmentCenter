//
//  CompositionalModel.swift
//  CSDC-task
//
//  Created by Нұрмұхан Дәукес on 22.06.2023.
//

import Foundation

struct CompositionalModel: Hashable {
    var mainTitle: String?
    var firstNumebr: Int?
    var secondNumber: Int?
}

extension CompositionalModel {
    static let modelsArray = [
        [
            CompositionalModel(mainTitle: "Лекция", firstNumebr: 10, secondNumber: 5),
            CompositionalModel(mainTitle: "Семинар", firstNumebr: 10, secondNumber: 5),
            CompositionalModel(mainTitle: "Лабарат.", firstNumebr: 10, secondNumber: 5)
        ]
     
    ]
}
