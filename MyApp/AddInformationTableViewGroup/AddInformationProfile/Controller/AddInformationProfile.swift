//
//  AddInformationProfile.swift
//  MyApp
//
//  Created by Nikita Moskalenko on 5/22/20.
//  Copyright © 2020 Nikita Moskalenko. All rights reserved.
//

import UIKit

class AddInformationProfile: UIViewController {
    
    // MARK: - Private properties
    
    private var profileTable = UITableView()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        addSettingToView()
        createProfileTableView()
        addConstraintsToProfileTable()
    }
    
    // MARK: - Private methods
    
    private func addSettingToView() {
        navigationController?.topViewController?.title = TextViewController.TextFile.newPlace.text
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font :
                                                                   UIFont(name: TextViewController.TextFile.titleFont.text,
                                                                          size: 24) as Any]
        navigationController?.topViewController?.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save,
                                                                                                     target: self,
                                                                                                     action: #selector(save))
        navigationController?.topViewController?.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel,
                                                                                                    target: self,
                                                                                                    action: #selector(cancel))
    }
    
    private func addConstraintsToProfileTable() {
        profileTable.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        profileTable.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        profileTable.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        profileTable.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    private func createProfileTableView() {
        profileTable = UITableView(frame: .zero, style: .grouped)
        profileTable.translatesAutoresizingMaskIntoConstraints = false
        profileTable.delegate = self
        profileTable.dataSource = self
        
        view.addSubview(profileTable)
    }
    
    // MARK: - @objc methods
    
    @objc
    private func save () {
        
    }
    
    @objc
    private func cancel() {
        dismiss(animated: true, completion: nil)
    }
}

// MARK: - Extensions

extension AddInformationProfile: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
