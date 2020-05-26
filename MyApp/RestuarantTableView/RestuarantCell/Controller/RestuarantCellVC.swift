//
//  RestuarantCell.swift
//  MyApp
//
//  Created by Nikita Moskalenko on 5/20/20.
//  Copyright © 2020 Nikita Moskalenko. All rights reserved.
//

import UIKit

final class RestuarantCellVC: UITableViewCell {
    
    // MARK: - Private properties
    
    private var restuarantPhoto = UIImageView()
    private var restuarantName = UILabel()
    private var restuarantLocationLabel = UILabel()
    private var typePlaceLabel = UILabel()
    let barsAndRestuarantsNames = [TextViewController.barAndRestuarants.buregerKing.name,
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
        createLocationLabel()
        createTypePlaceLabel()
        addConstraintToRestuarantPhoto()
        addConstraintToRestuarantNameLabel()
        addConstraintToLocationLabel()
        addConstraintToTypeOfPlaceLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private methods
    
    func setRestuarant(restuarant: RestuarantCellModel) {
        restuarantPhoto.image = restuarant.restuarantPhoto
        restuarantName.text = restuarant.restuarantName
        restuarantLocationLabel.text = restuarant.locationOfPlace
        typePlaceLabel.text = restuarant.typeOfPlace
    }
    
    private func createRestuarantPhoto() {
        restuarantPhoto.clipsToBounds = true
        restuarantPhoto.contentMode = .scaleAspectFit
        restuarantPhoto.layer.cornerRadius = 65 / 2
        
        addSubview(restuarantPhoto)
    }
    
    private func createRestuarantNameLabel() {
        restuarantName.font = UIFont(name: TextViewController.TextFile.restuarantNamesFont.text, size: 18)
        addSubview(restuarantName)
    }
    
    private func createLocationLabel() {
        restuarantLocationLabel.translatesAutoresizingMaskIntoConstraints = false
        restuarantLocationLabel.font = UIFont(name: TextViewController.TextFile.restuarantLocationLabelFont.text, size: 16)
        
        addSubview(restuarantLocationLabel)
    }
    
    private func createTypePlaceLabel() {
        typePlaceLabel.translatesAutoresizingMaskIntoConstraints = false
        typePlaceLabel.font = UIFont(name: TextViewController.TextFile.typeOfPlaceLabelFont.text, size: 12)
        
        addSubview(typePlaceLabel)
    }
    
    private func addConstraintToRestuarantPhoto() {
        restuarantPhoto.translatesAutoresizingMaskIntoConstraints = false
        
        restuarantPhoto.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor,
                                                         multiplier: 2).isActive = true
        restuarantPhoto.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        restuarantPhoto.heightAnchor.constraint(equalToConstant: 65).isActive = true
        restuarantPhoto.widthAnchor.constraint(equalToConstant: 65).isActive = true
    }
    
    private func addConstraintToRestuarantNameLabel() {
        restuarantName.translatesAutoresizingMaskIntoConstraints = false
        
        restuarantName.leadingAnchor.constraint(equalTo: restuarantPhoto.trailingAnchor, constant: 15).isActive = true
        restuarantName.topAnchor.constraint(equalTo: topAnchor, constant: 15) .isActive = true
    }
    
    private func addConstraintToLocationLabel() {
        restuarantLocationLabel.topAnchor.constraint(equalTo: restuarantName.bottomAnchor, constant: 5).isActive = true
        restuarantLocationLabel.leadingAnchor.constraint(equalTo: restuarantPhoto.trailingAnchor, constant: 15).isActive = true
    }
    
    private func addConstraintToTypeOfPlaceLabel() {
        typePlaceLabel.topAnchor.constraint(equalTo: restuarantLocationLabel.bottomAnchor, constant: 5).isActive = true
        typePlaceLabel.leadingAnchor.constraint(equalTo: restuarantPhoto.trailingAnchor, constant: 15).isActive = true
    }
}
