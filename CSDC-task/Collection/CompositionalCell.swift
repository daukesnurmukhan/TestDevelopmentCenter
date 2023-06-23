//
//  CompositionalCell.swift
//  CSDC-task
//
//  Created by Нұрмұхан Дәукес on 21.06.2023.
//

import UIKit
import SnapKit

class CompositionalCell: UICollectionViewCell {
    
    static let identifier = "TopCell"
    
    // MARK: - UI
    
    private lazy var lectionLabel: UILabel = {
        let label = UILabel()
        label.text = "Лекция"
        label.textAlignment = .center
        label.textColor = .gray
        label.font = .systemFont(ofSize: 10, weight: .regular)
        label.layer.borderColor = UIColor.gray.cgColor
        label.layer.borderWidth = 1
        return label
    }()
    
    private lazy var seminarLabel: UILabel = {
        let label = UILabel()
        label.text = "Семинар"
        label.textAlignment = .center
        label.textColor = .gray
        label.font = .systemFont(ofSize: 10, weight: .regular)
        label.layer.borderColor = UIColor.gray.cgColor
        label.layer.borderWidth = 1
        return label
    }()
    
    private lazy var labLabel: UILabel = {
        let label = UILabel()
        label.text = "Лабарат."
        label.textAlignment = .center
        label.textColor = .gray
        label.font = .systemFont(ofSize: 10, weight: .regular)
        label.layer.borderColor = UIColor.gray.cgColor
        label.layer.borderWidth = 1
        return label
    }()
    
    private lazy var tableOne = UILabel(text: "10/30")
    private lazy var tableTwo = UILabel(text: "30/30")
    private lazy var tableThree = UILabel(text: "30/30")
    
    private lazy var tableFour = UILabel(text: "5/15")
    private lazy var tableFive = UILabel(text: "15/15")
    private lazy var tableSix = UILabel(text: "")
    
    private lazy var tableSeven = UILabel(text: "10/30")
    private lazy var tableEight = UILabel(text: "10/30")
    private lazy var tableNine = UILabel(text: "10/30")
    
    
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("ERROR")
    }
    
    // MARK: - Setup
    
    private func setupViews() {
        addSubview(lectionLabel)
        addSubview(seminarLabel)
        addSubview(labLabel)
        addSubview(tableOne)
        addSubview(tableTwo)
        addSubview(tableThree)
        addSubview(tableFour)
        addSubview(tableFive)
        addSubview(tableSix)
        addSubview(tableSeven)
        addSubview(tableEight)
        addSubview(tableNine)

    }
    
    private func setupConstraints() {
        lectionLabel.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(40)
            make.leading.top.bottom.equalTo(contentView)
        }
        
        tableOne.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(60)
            make.leading.equalTo(lectionLabel.snp.leading)
            make.top.equalTo(lectionLabel.snp.bottom)
        }
        
        tableTwo.snp.makeConstraints { make in
            make.size.equalTo(tableOne)
            make.leading.equalTo(lectionLabel.snp.leading)
            make.top.equalTo(tableOne.snp.bottom)
        }
        
        tableThree.snp.makeConstraints { make in
            make.size.equalTo(tableOne)
            make.leading.equalTo(lectionLabel.snp.leading)
            make.top.equalTo(tableTwo.snp.bottom)
        }
        
        seminarLabel.snp.makeConstraints { make in
            make.size.equalTo(lectionLabel)
            make.leading.equalTo(lectionLabel.snp.trailing)
        }
        
        tableFour.snp.makeConstraints { make in
            make.size.equalTo(tableOne)
            make.leading.equalTo(seminarLabel.snp.leading)
            make.top.equalTo(seminarLabel.snp.bottom)
        }
        
        tableFive.snp.makeConstraints { make in
            make.size.equalTo(tableOne)
            make.leading.equalTo(seminarLabel.snp.leading)
            make.top.equalTo(tableFour.snp.bottom)
        }
        
        tableSix.snp.makeConstraints { make in
            make.size.equalTo(tableOne)
            make.leading.equalTo(seminarLabel.snp.leading)
            make.top.equalTo(tableFive.snp.bottom)
        }
        
        labLabel.snp.makeConstraints { make in
            make.size.equalTo(lectionLabel)
            make.leading.equalTo(seminarLabel.snp.trailing)
        }
        
        tableSeven.snp.makeConstraints { make in
            make.size.equalTo(tableOne)
            make.leading.equalTo(labLabel.snp.leading)
            make.top.equalTo(labLabel.snp.bottom)
        }
        
        tableEight.snp.makeConstraints { make in
            make.size.equalTo(tableOne)
            make.leading.equalTo(labLabel.snp.leading)
            make.top.equalTo(tableSeven.snp.bottom)
        }
        
        tableNine.snp.makeConstraints { make in
            make.size.equalTo(tableOne)
            make.leading.equalTo(labLabel.snp.leading)
            make.top.equalTo(tableEight.snp.bottom)
        }
    }
    
    func configuration(model: CompositionalModel) {
//        self.lectionLabel.text = model.mainTitle
//        self.seminarLabel.text = model.mainTitle
//        self.labLabel.text = model.mainTitle
    }
    
}
