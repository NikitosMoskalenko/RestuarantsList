//
//  TextFile.swift
//  MyApp
//
//  Created by Nikita Moskalenko on 5/20/20.
//  Copyright © 2020 Nikita Moskalenko. All rights reserved.
//

import UIKit

final class TextViewController: UIViewController {
    
    enum TextFile {
        case cell
        
        var text: String {
            switch self {
            case .cell:
                return "Cell"
            }
        }
    }
    
    enum barAndRestuarants {
        case buregerKing
        case kfc
        case mcdonalds
        case skiff
        case klever
        case gosti
        case friends
        
        var name: String {
            switch self {
            case .buregerKing:
                return "Burger King"
            case .kfc:
                return "KFC"
            case .mcdonalds:
                return "McDonalds"
            case .skiff:
                return "Скиф"
            case .klever:
                return "Клевер"
            case .gosti:
                return "Гости"
            case .friends:
                return "Друзья"
            }
        }
    }
}
