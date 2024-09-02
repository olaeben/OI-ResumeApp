//
//  portfolioPage.swift
//  OI_PortfolioUITests
//
//  Created by Wale Ibitoye on 9/2/24.
//

import XCTest

class ResumePage {

    let app: XCUIApplication

    init(app: XCUIApplication) {
        self.app = app
    }

    // Elements
    var authorName: XCUIElement {
        return app.staticTexts["Olawale Ibitoye"]
    }
    
    var skillsChevronButton: XCUIElement {
        return app.buttons.matching(identifier: "Go Up").element(boundBy: 0)
    }
    
    var experienceChevronButton: XCUIElement {
        return app.buttons.matching(identifier: "Go Up").element(boundBy: 1)
    }
    
    var mobileText: XCUIElement {
        return app.staticTexts["Mobile"]
    }
    
    var jobText: XCUIElement {
        return app.staticTexts["INIT Creative"]
    }

    // Actions
    func verifyAuthorNameExists() {
        XCTAssertTrue(authorName.exists, "The author's name should exist")
    }

    func toggleSkillsSection() {
        XCTAssertTrue(skillsChevronButton.exists, "The skills chevron button should exist")
        skillsChevronButton.tap()
    }

    func verifySkillsVisibility(shouldExist: Bool) {
        if shouldExist {
            XCTAssertTrue(mobileText.exists, "The mobile and other skills should be visible")
        } else {
            XCTAssertFalse(mobileText.exists, "The mobile and other skills should not be visible")
        }
    }

    func toggleExperienceSection() {
        XCTAssertTrue(experienceChevronButton.exists, "The experience chevron button should exist")
        experienceChevronButton.tap()
    }

    func verifyExperienceVisibility(shouldExist: Bool) {
        if shouldExist {
            XCTAssertTrue(jobText.exists, "Creative and other experiences should be visible")
        } else {
            XCTAssertFalse(jobText.exists, "Creative and other experiences should not be visible")
        }
    }
}
