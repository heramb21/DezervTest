//
//  DezervTestTests.swift
//  DezervTestTests
//
//  Created by Heramb on 11/12/21.
//

import XCTest

@testable import DezervTest

class DezervTestTests: XCTestCase {

    // MARK: - Test Product list
    func testPoductList() {
        // Arrange
        let sut = TableViewController() // System Under Test
        // Act
        sut.loadViewIfNeeded()
        sut.beginAppearanceTransition(true, animated: false)
        // Assert
        XCTAssertGreaterThan(sut.tableView.numberOfRows(inSection: 0), 0)
    }
}
