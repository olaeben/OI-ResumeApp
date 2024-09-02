//
//  OI_PortfolioUITests.swift
//  OI_PortfolioUITests
//
//  Created by Wale Ibitoye on 9/2/24.
//

import XCTest
import Foundation

final class OI_ResumeTests: OIBaseTest {

    func testResumePage() throws {
        // Initialize the Page Object
        let resumePage = ResumePage(app: app)

        // Verify Author's Name
        resumePage.verifyAuthorNameExists()

        // Verify and Toggle Skills Section
        resumePage.verifySkillsVisibility(shouldExist: true)
        resumePage.toggleSkillsSection()
        resumePage.verifySkillsVisibility(shouldExist: false)

        // Verify and Toggle Experience Section
        resumePage.verifyExperienceVisibility(shouldExist: true)
        resumePage.toggleExperienceSection()
        resumePage.verifyExperienceVisibility(shouldExist: false)

        // Toggle Back the Skills and Experience Sections
        resumePage.toggleExperienceSection()
        resumePage.toggleSkillsSection()
    }
}
