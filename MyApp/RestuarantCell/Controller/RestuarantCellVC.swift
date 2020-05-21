//
//  RestuarantCell.swift
//  MyApp
//
//  Created by Nikita Moskalenko on 5/20/20.
//  Copyright © 2020 Nikita Moskalenko. All rights reserved.
//

import UIKit

final class RestuarantCell: UITableViewCell {
    
    // MARK: - Private properties
    
    private var restuarantPhoto = UIImageView()
    private var restuarantName = UILabel()
    private let barsAndRestuarantsNames = [TextViewController.barAndRestuarants.buregerKing.name,
                                           TextViewController.barAndRestuarants.friends.name,
                                           TextViewController.barAndRestuarants.gosti.name,
                                           TextViewController.barAndRestuarants.kfc.name,
                                           TextViewController.barAndRestuarants.klever.name,
                                           TextViewController.barAndRestuarants.mcdonalds.name,
                                           TextViewController.barAndRestuarants.skiff.name]

    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        createRestuarantPhoto()
        createRestuarantNameLabel()
        addConstraintToRestuarantPhoto()
        addConstraintToRestuarantNameLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private methods
    
    private func createRestuarantPhoto() {
        restuarantPhoto.clipsToBounds = true
        restuarantPhoto.contentMode = .scaleAspectFit
        
        addSubview(restuarantPhoto)
    }
    
    private func createRestuarantNameLabel() {
        addSubview(restuarantName)
    }
    
    private func addConstraintToRestuarantPhoto() {
        restuarantPhoto.translatesAutoresizingMaskIntoConstraints = false
        
        restuarantPhoto.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor,
                                                         multiplier: 12).isActive = true
        restuarantPhoto.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        restuarantPhoto.heightAnchor.constraint(equalToConstant: 40).isActive = true
        restuarantPhoto.widthAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    private func addConstraintToRestuarantNameLabel() {
        restuarantName.translatesAutoresizingMaskIntoConstraints = false
        
        restuarantName.leadingAnchor.constraint(equalToSystemSpacingAfter: restuarantPhoto.trailingAnchor,
                                                                            multiplier: 15).isActive = true
        restuarantName.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    

    
}
