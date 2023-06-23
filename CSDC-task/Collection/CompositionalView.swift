//
//  SelectionViewController.swift
//  CSDC-task
//
//  Created by Нұрмұхан Дәукес on 21.06.2023.
//

import UIKit

class CompositionalView: UIViewController {
    
    // MARK: - UI
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Butoon", for: .normal)
        button.setTitleColor(.red, for: .normal)
        return button
    }()
    
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: createLayout())
        collectionView.register(CompositionalCell.self, forCellWithReuseIdentifier: CompositionalCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        //title = "Compositional"
        setupViews()
        setupConstraints()
    }
    
    // MARK: - Setup Views
    
    private func setupViews() {
        view.addSubview(collectionView)
        view.addSubview(button)
    }
    
    private func setupConstraints() {
        
        button.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(100)
            make.leading.equalTo(view.snp.leading).offset(10)
        }
        
        collectionView.snp.makeConstraints { make in
//            make.right.bottom.left.equalTo(view)
//            make.top.equalTo(view.safeAreaLayoutGuide)

            make.top.equalTo(view.snp.top).offset(50)
            make.leading.equalTo(button.snp.trailing).offset(16)
            make.trailing.equalTo(view.snp.trailing)
            make.bottom.equalTo(view.snp.bottom).offset(-500)
        }
    }
    
    // MARK: - CollectionViewLayout

    private func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { (section, _) -> NSCollectionLayoutSection in

                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .fractionalHeight(1)
                )

                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 10,
                                                                   leading: 50,
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
                                                                      leading: 10,
                                                                      bottom: 20,
                                                                      trailing: 0)
                layoutSection.orthogonalScrollingBehavior = .continuous
                return layoutSection
        }
    }
    
}

// MARK: - Collection Setup

extension CompositionalView: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return CompositionalModel.modelsArray[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: CompositionalCell.identifier, for: indexPath) as! CompositionalCell
        item.configuration(model: CompositionalModel.modelsArray[indexPath.section][indexPath.item])
        return item
    }
}
