//
//  ViewController.swift
//  MyApp
//
//  Created by Nikita Moskalenko on 5/19/20.
//  Copyright © 2020 Nikita Moskalenko. All rights reserved.
//

import UIKit

final class List: UIViewController {
    
    // MARK: - Private properties
    
    private let myTableView = UITableView()
    private var safeArea: UILayoutGuide!
    
    // MARK: - Lifecycle

    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        safeArea = view.layoutMarginsGuide
        
        createTableView()
    }

    // MARK: - Private methods

    private func createTableView() {
        myTableView.translatesAutoresizingMaskIntoConstraints = false
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: TextViewController.TextFile.cell.text)
        
        view.addSubview(myTableView)
        myTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        myTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        myTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        myTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
}

// MARK: - Extensions

extension List: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return barsAndRestuarantsNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}


