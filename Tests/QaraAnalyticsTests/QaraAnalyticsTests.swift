//
//  QaraAnalyticsTests.swift
//  QaraAnalyticsTests
//
//  Created by SALGARA, YESKENDIR on 26.04.24.
//

import XCTest
@testable import QaraAnalytics

final class QaraAnalyticsTests: XCTestCase {
    
    var sut: QaraAnalytics!
    var tools: [QaraAnalyticsTool]!
    
    override func setUp() async throws {
        sut = QaraAnalytics.shared
        tools = [MockQaraAnalyticsTool(), MockQaraAnalyticsTool()]
        sut.configure(tools: tools)
    }
    
    func testTrackEventOneAnalyticsTool() {
        sut.track(.init(name: "test", properties: [:]))
        tools.forEach {
            XCTAssertTrue(($0 as! MockQaraAnalyticsTool).isTracked)
        }
    }

}

class MockQaraAnalyticsTool: QaraAnalyticsTool {
    var isTracked: Bool = false
    
    func track(event: AnalyticsEvent) {
        isTracked = true
    }
}
