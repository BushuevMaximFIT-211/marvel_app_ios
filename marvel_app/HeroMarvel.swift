//
//  HeroMarvel.swift
//  marvel_app
//
//  Created by user225687 on 1/6/23.
//

import Foundation

struct HeroMarvel: Equatable, Hashable
{
    let name: String
    let resID: String
    static let example = HeroMarvel(name: "Deadpool", resID: "deadpool")
    
    static func ==(lhs: HeroMarvel, rhs: HeroMarvel) -> Bool {
        return lhs.name == rhs.name && lhs.resID == rhs.resID
    }
    
}
