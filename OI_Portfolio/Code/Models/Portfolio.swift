//
//  Portfolio.swift
//  OI_Portfolio
//
//  Created by Wale Ibitoye on 8/28/24.
//

import Foundation

struct Skill: Identifiable {
    var id: String
    let skillName: String
    let image: String
}

struct Experience: Identifiable {
    var id: String
    let companyName: String
    let role: String
    let duration: String
}

struct Portfolio {
    let name: String
    let role: String
    let description: String
    let linkedin: String
    let github: String
    let location: String
    let skills: [Skill]
    let experience: [Experience]
}
