//
//  Content.swift
//  NetflixMain
//
//  Created by woojin Choi on 2023/06/18.
//

import UIKit

struct Content: Decodable {
    let sectionType: SectionType
    let sectionName: String
    let contentItem: [Item]
    
    enum SectionType: String, Decodable {
        case basic
        case main
        case large
        case rank
        
        var identifier: String {
            switch self {
            case .basic:
                return "ContentCollecionViewCell"
            case .main:
                return "ContentCollectionViewMainCell"
            case .large:
                return "ContentCollecionViewLargeCell"
            case .rank:
                return "ContentCollecionViewRankCell"
            }
        }
    }
}

struct Item: Decodable {
    let description: String
    let imageName: String
    
    var image: UIImage {
        return UIImage(named: imageName) ?? UIImage()
    }
}
