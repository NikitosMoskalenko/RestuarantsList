//
//  ViewController.swift
//  MyApp
//
//  Created by Nikita Moskalenko on 5/19/20.
//  Copyright © 2020 Nikita Moskalenko. All rights reserved.
//

import UIKit

final class RestuarantListVC: UIViewController {
    
    // MARK: - Private properties
    
    private let restuarantsList = UITableView()
    private var safeArea: UILayoutGuide!
    private var addProfileButton = UIBarButtonItem()
    private var restuarantsCells: [RestuarantCellModel] = []
    
    // MARK: - Lifecycle

    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restuarantsCells = createArrayWithModels()
        safeArea = view.layoutMarginsGuide
        createTableView()
        addSettingToNavigationBar()
    }

    // MARK: - Private methods
    
    private func addSettingToNavigationBar() {
        navigationItem.title = TextViewController.TextFile.myPlace.text
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font : UIFont(name: TextViewController.TextFile.titleFont.text, size: 24) as Any]
        addProfileButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addProfile))
        navigationItem.rightBarButtonItem = addProfileButton
    }

    private func createTableView() {
        restuarantsList.translatesAutoresizingMaskIntoConstraints = false
        restuarantsList.delegate = self
        restuarantsList.dataSource = self
        restuarantsList.register(RestuarantCellVC.self, forCellReuseIdentifier: TextViewController.TextFile.cell.text)
        
        view.addSubview(restuarantsList)
        restuarantsList.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        restuarantsList.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        restuarantsList.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        restuarantsList.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    // MARK: - @objc methods
    
    @objc
    private func addProfile() {
        let createNewProfile = AddInformationProfile()
        let addProfileViewController = UINavigationController(rootViewController: createNewProfile)
        addProfileViewController.modalPresentationStyle = .fullScreen
        addProfileViewController.modalTransitionStyle = .crossDissolve
        present(addProfileViewController, animated: true, completion: nil)
    }
}

// MARK: - Extensions

extension RestuarantListVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restuarantsCells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let restuarantCell = tableView.dequeueReusableCell(withIdentifier: TextViewController.TextFile.cell.text) as? RestuarantCellVC {
            let restuarant = restuarantsCells[indexPath.row]
            restuarantCell.setRestuarant(restuarant: restuarant)
            return restuarantCell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
}

extension RestuarantListVC {
    private func createArrayWithModels() -> [RestuarantCellModel] {
        let vc = RestuarantCellVC()
        var result = [RestuarantCellModel]()
        for restuarant in vc.barsAndRestuarantsNames {
            let restuarant = RestuarantCellModel(restuarantPhoto: UIImage(named: restuarant),
                                                 restuarantName: restuarant,
                                                 locationOfPlace: "Location",
                                                 typeOfPlace: "Type")
            result.append(restuarant)
        }
        return result
    }
}


