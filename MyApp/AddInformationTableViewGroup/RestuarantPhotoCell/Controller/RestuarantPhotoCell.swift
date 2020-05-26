//
//  RestuarantPhotoCell.swift
//  MyApp
//
//  Created by Nikita Moskalenko on 5/25/20.
//  Copyright © 2020 Nikita Moskalenko. All rights reserved.
//

import UIKit

class RestuarantPhotoCell: UITableViewCell {
    
    // MARK: - Private properties
    
    private var restuarantPhotoImageView = UIImageView()
    
    // MARK: - Initialization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSettingToRestuarantPhotoImageView()
        addConstraintToImageView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private methods
        
    private func addSettingToRestuarantPhotoImageView() {
        restuarantPhotoImageView.image = UIImage(named: TextViewController.TextFile.defaultPhoto.text)
        restuarantPhotoImageView.clipsToBounds = true
        restuarantPhotoImageView.contentMode = .scaleAspectFit
        addSubview(restuarantPhotoImageView)
        restuarantPhotoImageView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func addConstraintToImageView() {
        restuarantPhotoImageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        restuarantPhotoImageView.widthAnchor.constraint(equalToConstant: 375).isActive = true
        restuarantPhotoImageView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 0).isActive = true
        restuarantPhotoImageView.bottomAnchor.constraint(equalToSystemSpacingBelow: bottomAnchor, multiplier: 0).isActive = true
        restuarantPhotoImageView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 0).isActive = true
        restuarantPhotoImageView.trailingAnchor.constraint(equalToSystemSpacingAfter: trailingAnchor, multiplier: 0).isActive = true
    }
}
