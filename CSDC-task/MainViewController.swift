//
//  ViewController.swift
//  CSDC-task
//
//  Created by Нұрмұхан Дәукес on 20.06.2023.
//

import UIKit
import SnapKit

final class MainViewController: UIViewController {
    
    // MARK: - UI
    
    private lazy var individualStudyPlanLabel: UILabel = {
        let label = UILabel()
        label.text = "Individual study plan"
        label.textColor = .yellow
        label.font = .systemFont(ofSize: 15, weight: .medium)
        return label
    }()
    
    private lazy var individualStudyPlanButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Continue", for: .normal)
        button.tintColor = .black
        button.backgroundColor = .yellow
        button.layer.cornerRadius = 16
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        setupViews()
        setupConstraints()
    }
    
    // MARK: - Setup Views
    
    private func setupViews() {
        
        view.addSubview(individualStudyPlanLabel)
        view.addSubview(individualStudyPlanButton)
    }
    
    // MARK: - Setup Constraints
    
    private func setupConstraints() {
        individualStudyPlanLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        individualStudyPlanButton.snp.makeConstraints { make in
            make.top.equalTo(individualStudyPlanLabel.snp.bottom).offset(10)
            make.height.equalTo(60)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
        }
    }
    
    // MARK: - Actions
    
    @objc func buttonPressed() {
        let viewController = SyllabusViewController()
        if let navigator = navigationController {
            navigator.pushViewController(viewController, animated: true)
        }
    }
}

