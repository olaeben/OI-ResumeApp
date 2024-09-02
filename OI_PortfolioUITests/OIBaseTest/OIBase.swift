//
//  OIBase.swift
//  OI_PortfolioUITests
//
//  Created by Wale Ibitoye on 9/2/24.
//

import Foundation
import XCTest

class OIBaseTest: XCTestCase {
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        super.setUp()
        continueAfterFailure = false
        app.launch()
        
    }

    override func tearDownWithError() throws {
        super.tearDown()
        app.terminate()
        
    }
}

