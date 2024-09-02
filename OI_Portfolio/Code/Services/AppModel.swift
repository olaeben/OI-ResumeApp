//
//  AppModel.swift
//  OI_Portfolio
//
//  Created by Wale Ibitoye on 8/28/24.
//

import Foundation

class AppModel: ObservableObject {
    var portfolio: Portfolio = Portfolio(name: "Olawale Ibitoye", role: "QA Engineer", description: "Experienced Tester with a profound passion for Technology.", linkedin: "olawale-ibitoye", github: "olaeben", location: "United Kingdom", skills: [
        Skill(id: UUID().uuidString, skillName: "Mobile", image: "iphone"),
        Skill(id: UUID().uuidString, skillName: "API", image: "laptopcomputer"),
        Skill(id: UUID().uuidString, skillName: "Accessibility", image: "accessibility"),
        Skill(id: UUID().uuidString, skillName: "Automation", image: "dot.scope.laptopcomputer"),
        Skill(id: UUID().uuidString, skillName: "Database", image: "square.stack.3d.up.badge.automatic.fill"),
        Skill(id: UUID().uuidString, skillName: "CI/CD", image: "infinity")],
                                         
        experience: [
        Experience(id: UUID().uuidString, companyName: "INIT Creative", role: "AI Specialist", duration: "July 2024 - Present"),
        Experience(id: UUID().uuidString, companyName: "Digivante", role: "Freelance Tester", duration: "Jan 2023 - Present"),
        Experience(id: UUID().uuidString, companyName: "Vertex", role: "QA Engineer", duration: "Apr 2022 - Dec 2022"),
        Experience(id: UUID().uuidString, companyName: "Renmoney", role: "QA Engineer", duration: "Jun 2021 - Apr 2022"),
        Experience(id: UUID().uuidString, companyName: "RGS", role: "Software Tester", duration: "Sept 2019 - Jun 2021"),
                                            
    ]
                                         
    )
    
}
