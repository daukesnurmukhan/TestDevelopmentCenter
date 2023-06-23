//
//  IndividualStudyPlanViewController.swift
//  CSDC-task
//
//  Created by Нұрмұхан Дәукес on 20.06.2023.
//

import UIKit

class SyllabusViewController: UIViewController {
    
    // MARK: - UI
    
    private lazy var syllabusLabel: UILabel = {
        let label = UILabel()
        label.text = "ИНДИВИДУАЛЬНЫЙ УЧЕБНЫЙ ПЛАН НА 2020-2021 УЧ.ГОД"
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .bold)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    var segControl = CustomSegmentedControl(frame: CGRect(), buttonTitle: ["Cеместр 5", "Cеместр 6"])
    
    // MARK: - Table
    
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: createLayout())
        collectionView.register(CompositionalCell.self, forCellWithReuseIdentifier: CompositionalCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()
    
    private lazy var labelHoureLessen: UILabel = {
        let label = UILabel()
        label.text = "Аудиторные занятие в часах"
        label.textColor = .gray
        label.font = .systemFont(ofSize: 10, weight: .regular)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var nameDiscipline: UILabel = {
        let label = UILabel()
        label.text = "Наименование дисциплины"
        label.textColor = .gray
        label.font = .systemFont(ofSize: 10, weight: .regular)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    let borderViewDiscipline: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    private lazy var firsNameDiscipline: UILabel = {
        let label = UILabel()
        label.text = "Электрохимия (на англ.яз)"
        label.textColor = .black
        label.font = .systemFont(ofSize: 10, weight: .regular)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    let borderViewFirsNameDiscipline: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    private lazy var secondNameDiscipline: UILabel = {
        let label = UILabel()
        label.text = "Иностранный язык C1"
        label.textColor = .black
        label.font = .systemFont(ofSize: 10, weight: .regular)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    let borderViewSecondNameDiscipline: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    private lazy var thirdNameDiscipline: UILabel = {
        let label = UILabel()
        label.text = "Основы химического анализа"
        label.textColor = .black
        label.font = .systemFont(ofSize: 10, weight: .regular)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    let borderViewThirdNameDiscipline: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
        
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Индивидуальный учебный план"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "arrow.down.doc"))

        setupViews()
        setupConstraints()
        
        segControl.backgroundColor = UIColor(red: 238/255, green: 238/255, blue: 238/266, alpha: 1)

    }
    
    // MARK: - Setup Views
    
    private func setupViews() {
        view.addSubview(syllabusLabel)
        view.addSubview(segControl)
        
        view.addSubview(collectionView)
        
        view.addSubview(labelHoureLessen)
        
        view.addSubview(nameDiscipline)
        view.addSubview(borderViewDiscipline)
        view.addSubview(firsNameDiscipline)
        view.addSubview(borderViewFirsNameDiscipline)
        view.addSubview(secondNameDiscipline)
        view.addSubview(borderViewSecondNameDiscipline)
        view.addSubview(thirdNameDiscipline)
        view.addSubview(borderViewThirdNameDiscipline)
    }
    
    // MARK: - Setup Constraints
    
    private func setupConstraints() {
        syllabusLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(150)
            make.centerX.equalToSuperview()
            make.leading.equalToSuperview().offset(35)
            make.trailing.equalToSuperview().offset(-35)
        }
        
        segControl.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.top.equalTo(syllabusLabel.snp.bottom).offset(70)
            make.height.equalTo(50)
        }
        
        labelHoureLessen.snp.makeConstraints { make in
            make.top.equalTo(segControl.snp.bottom).offset(20)
            make.trailing.equalToSuperview()
            make.leading.equalTo(nameDiscipline.snp.trailing)
            make.bottom.equalTo(nameDiscipline.snp.top).offset(-20)
        }
        
        nameDiscipline.snp.makeConstraints { make in
            make.top.equalTo(labelHoureLessen.snp.bottom)
            make.leading.equalTo(view.snp.leading).offset(5)
            make.height.equalTo(40)
            make.width.equalTo(130)
        }
        
        borderViewDiscipline.snp.makeConstraints { make in
            make.top.equalTo(nameDiscipline.snp.bottom)
            make.leading.equalTo(nameDiscipline.snp.leading)
            make.height.equalTo(1)
            make.width.equalTo(nameDiscipline)
        }
        
        firsNameDiscipline.snp.makeConstraints { make in
            make.top.equalTo(borderViewDiscipline.snp.bottom)
            make.leading.equalTo(nameDiscipline.snp.leading)
            make.width.equalTo(nameDiscipline)
            make.height.equalTo(60)
        }
        
        borderViewFirsNameDiscipline.snp.makeConstraints { make in
            make.top.equalTo(firsNameDiscipline.snp.bottom)
            make.leading.equalTo(borderViewDiscipline.snp.leading)
            make.height.equalTo(1)
            make.width.equalTo(borderViewDiscipline)
        }
        
        secondNameDiscipline.snp.makeConstraints { make in
            make.top.equalTo(borderViewFirsNameDiscipline.snp.bottom)
            make.leading.equalTo(nameDiscipline.snp.leading)
            make.width.equalTo(nameDiscipline)
            make.height.equalTo(60)
        }
        
        borderViewSecondNameDiscipline.snp.makeConstraints { make in
            make.top.equalTo(secondNameDiscipline.snp.bottom)
            make.leading.equalTo(secondNameDiscipline.snp.leading)
            make.height.equalTo(1)
            make.width.equalTo(secondNameDiscipline)
        }
        
        thirdNameDiscipline.snp.makeConstraints { make in
            make.top.equalTo(borderViewSecondNameDiscipline.snp.bottom)
            make.leading.equalTo(nameDiscipline.snp.leading)
            make.width.equalTo(nameDiscipline)
            make.height.equalTo(60)
        }
        
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(nameDiscipline.snp.top)
            make.leading.equalTo(nameDiscipline.snp.trailing)
            make.trailing.equalToSuperview().offset(-16)
            make.bottom.equalToSuperview()
        }
        
        
        
    }
    
    private func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { (section, _) -> NSCollectionLayoutSection in

                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .fractionalHeight(1)
                )

                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                   leading: 0,
                                                                   bottom: 0,
                                                                   trailing: 5)

                let groupSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .estimated(300)
                )
                let layoutGroup = NSCollectionLayoutGroup.horizontal(
                    layoutSize: groupSize,
                    subitems: [layoutItem]
                )

                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.orthogonalScrollingBehavior = .groupPagingCentered

                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                      leading: 0,
                                                                      bottom: 20,
                                                                      trailing: 0)
                layoutSection.orthogonalScrollingBehavior = .continuous
                return layoutSection
        }
    }
    
    // MARK: - Actions
    
    @objc func segmentedPressed() {
        let viewController = SyllabusViewController()
        if let navigator = navigationController {
            navigator.pushViewController(viewController, animated: true)
        }
    }
}

// MARK: - Collection Setup

extension SyllabusViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return CompositionalModel.modelsArray[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: CompositionalCell.identifier, for: indexPath) as! CompositionalCell
        item.configuration(model: CompositionalModel.modelsArray[indexPath.section][indexPath.item])
        return item
    }
}

